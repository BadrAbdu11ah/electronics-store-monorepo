import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/data/model/cart/cart_model.dart';
import 'package:electronics_store/features/cart/data/cart_data.dart';
import 'package:electronics_store/features/cart/function/cart_bloc_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final AppService appService;
  final CartData cartData;

  CartBloc({required this.cartData, required this.appService})
    : super(const CartState()) {
    on<_Started>(_onStarted);
    on<_LoadCart>(_onLoadCart);
    on<_UpdateQuantity>(_onUpdateQuantity);
    on<_ApplyCoupon>(_onApplyCoupon);
    on<_DeleteItem>(_onDeleteItem);
  }

  Future<void> _onStarted(_Started event, Emitter<CartState> emit) async {
    final String lang = appService.sharedPreferences.getString("lang") ?? "en";
    emit(state.copyWith(lang: lang, status: const CartStatus.initial()));
    add(const CartEvent.loadCart());
  }

  Future<void> _onLoadCart(_LoadCart event, Emitter<CartState> emit) async {
    emit(state.copyWith(status: const CartStatus.loading()));

    var response = await cartData.viewCart();

    response.fold(
      (failure) {
        emit(state.copyWith(status: CartStatus.serverFailure(failure.message)));
      },
      (cartResponse) {
        if (cartResponse.items.isEmpty) {
          return emit(
            state.copyWith(
              status: const CartStatus.noData("السلة فارغة حالياً"),
              cartItems: [],
              subtotalPrice: 0.0,
              totalAppPrice: 0.0,
              totalQuantity: 0,
              discountPercentage: 0,
            ),
          );
        }

        // حساب الإجمالي الخام قبل الخصم والشحن
        final double subtotal = cartResponse.totalPrice;

        // حساب قيمة خصم الكوبون بناءً على النسبة المخزنة في الـ State
        final double discountAmount = calculateDiscountAmount(
          subtotal: subtotal,
          discountPercentage: state.discountPercentage,
        );

        // حساب السعر النهائي الموحد (الإجمالي - الخصم + الشحن الثابت)
        final double finalTotal = calculateFinalTotal(
          subtotal: subtotal,
          discountAmount: discountAmount,
          shippingPrice: state.shippingPrice,
        );

        final double securedTotal = finalTotal < 0 ? 0.0 : finalTotal;

        emit(
          state.copyWith(
            status: const CartStatus.loaded(),
            cartItems: cartResponse.items,
            subtotalPrice: subtotal,
            totalAppPrice: securedTotal,
            totalQuantity: cartResponse.totalQuantity,
          ),
        );
      },
    );
  }

  Future<void> _onUpdateQuantity(
    _UpdateQuantity event,
    Emitter<CartState> emit,
  ) async {
    // 1. قفل العنصر الحالي فوراً عن طريق إضافة الـ ID لقائمة الـ updatingItemIds لمنع الضغط المتكرر وتفادي الأخطاء اللحظية
    emit(
      state.copyWith(updatingItemIds: [...state.updatingItemIds, event.itemId]),
    );

    // 2. تحديث قائمة المنتجات محلياً (محاكاة سريعة): البحث عن المنتج المطلوب وتغيير كميته وسعره الإجمالي
    final updatedList = addAndRemoveInCartItems(
      cartItems: state.cartItems,
      itemId: event.itemId,
      delta: event.delta,
    );

    // 3. إعادة حساب الإجماليات اللحظية للسلة لتتطابق مع التغيير المحلي السريع
    int newTotalQuantity = updatedList.fold(
      0,
      (sum, item) => sum + (item.countItems ?? 0),
    );

    // جمع أسعار كافة المنتجات المتبقية في السلة (Subtotal)
    double newSubtotal = updatedList.fold(
      0.0,
      (sum, item) => sum + (item.totalItemPrice ?? 0.0),
    );

    // حساب قيمة الخصم بناءً على الكوبون النشط حالياً في الـ State
    double discountAmount = calculateDiscountAmount(
      subtotal: newSubtotal,
      discountPercentage: state.discountPercentage,
    );

    // حساب الفاتورة النهائية بالريال (الإجمالي - الخصم + الشحن الثابت)
    double newFinalTotal = calculateFinalTotal(
      subtotal: newSubtotal,
      discountAmount: discountAmount,
      shippingPrice: state.shippingPrice,
    );

    emit(
      state.copyWith(
        cartItems: updatedList,
        totalQuantity: newTotalQuantity,
        subtotalPrice: newSubtotal,
        // حماية السعر النهائي من الهبوط تحت الصفر
        totalAppPrice: newFinalTotal < 0 ? 0.0 : newFinalTotal,
      ),
    );

    var response = event.delta > 0
        ? await cartData.addCart(event.itemId)
        : await cartData.removeCart(event.itemId);

    response.fold(
      (failure) {
        emit(
          state.copyWith(
            updatingItemIds: state.updatingItemIds
                .where((id) => id != event.itemId)
                .toList(),
          ),
        );
        add(const CartEvent.loadCart());
      },
      (_) {
        emit(
          state.copyWith(
            updatingItemIds: state.updatingItemIds
                .where((id) => id != event.itemId)
                .toList(),
          ),
        );
      },
    );
  }

  Future<void> _onDeleteItem(_DeleteItem event, Emitter<CartState> emit) async {
    // 1. تصفية القائمة محلياً لحذف المنتج تماماً
    final updatedList = state.cartItems
        .where((cartItem) => cartItem.item!.id != event.itemId)
        .toList();

    // 2. إعادة حساب الإجماليات اللحظية بعد الحذف النهائي للمنتج
    int newTotalQuantity = updatedList.fold(
      0,
      (sum, item) => sum + (item.countItems ?? 0),
    );

    double newSubtotal = updatedList.fold(
      0.0,
      (sum, item) => sum + (item.totalItemPrice ?? 0.0),
    );

    double discountAmount = calculateDiscountAmount(
      subtotal: newSubtotal,
      discountPercentage: state.discountPercentage,
    );

    double newFinalTotal = calculateFinalTotal(
      subtotal: newSubtotal,
      discountAmount: discountAmount,
      shippingPrice: state.shippingPrice,
    );

    // 3. تحديث الـ State فوراً بالأسعار الجديدة وقفل الـ ID لمنع الضغط المتكرر
    emit(
      state.copyWith(
        updatingItemIds: [...state.updatingItemIds, event.itemId],
        cartItems: updatedList,
        totalQuantity: newTotalQuantity,
        subtotalPrice: newSubtotal,
        totalAppPrice: newFinalTotal < 0 ? 0.0 : newFinalTotal,
      ),
    );

    // 4. إرسال طلب الحذف للسيرفر
    var response = await cartData.deleteCart(event.itemId);

    response.fold(
      (failure) {
        emit(
          state.copyWith(
            status: CartStatus.serverFailure(failure.message),
            updatingItemIds: state.updatingItemIds
                .where((id) => id != event.itemId)
                .toList(),
          ),
        );
        // إعادة تحميل السلة من السيرفر لإعادة المنتج الذي فشل حذفه
        add(const CartEvent.loadCart());
      },
      (_) {
        // نجاح الحذف: فك قفل العنصر فقط لأن القائمة والأسعار محدثة بالفعل
        emit(
          state.copyWith(
            updatingItemIds: state.updatingItemIds
                .where((id) => id != event.itemId)
                .toList(),
          ),
        );
      },
    );
  }

  Future<void> _onApplyCoupon(
    _ApplyCoupon event,
    Emitter<CartState> emit,
  ) async {
    if (event.couponName.isEmpty) return;

    var response = await cartData.checkCoupon(event.couponName);

    response.fold(
      (failure) => emit(
        state.copyWith(
          couponStatus: CouponStatus.couponFailure(failure.message),
        ),
      ),
      (couponModel) {
        if (couponModel.isExpired()) {
          emit(
            state.copyWith(
              couponStatus: const CouponStatus.couponFailure(
                "عذراً، هذا الكوبون منتهي الصلاحية",
              ),
            ),
          );
          return;
        }

        final int discount = couponModel.discount ?? 0;

        final double discountAmount = calculateDiscountAmount(
          subtotal: state.subtotalPrice,
          discountPercentage: discount,
        );

        final double finalTotal = calculateFinalTotal(
          subtotal: state.subtotalPrice,
          discountAmount: discountAmount,
          shippingPrice: state.shippingPrice,
        );

        emit(
          state.copyWith(
            couponStatus: CouponStatus.couponSuccess(
              "تم تطبيق خصم الكوبون بنجاح بـ $discount%",
            ),
            discountPercentage: discount,
            couponId: couponModel.id.toString(),
            couponName: couponModel.name,
            totalAppPrice: finalTotal < 0 ? 0.0 : finalTotal,
          ),
        );
      },
    );
  }
}
