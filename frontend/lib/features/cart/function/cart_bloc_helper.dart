import 'package:electronics_store/data/model/cart/cart_model.dart';

double calculateDiscountAmount({
  required double subtotal,
  required int discountPercentage,
}) {
  return subtotal * (discountPercentage / 100);
}

double calculateFinalTotal({
  required double subtotal,
  required double discountAmount,
  required double shippingPrice,
}) {
  return (subtotal - discountAmount) + shippingPrice;
}

List<CartModel> addAndRemoveInCartItems({
  required List<CartModel> cartItems,
  required int itemId,
  required int delta,
}) {
  final List<CartModel> updatedList = cartItems
      .map((cartItem) {
        // إذا كان هذا هو المنتج الذي ضغط عليه المستخدم (+ أو -)
        if (cartItem.item!.id == itemId) {
          final newCount =
              (cartItem.countItems ?? 0) + delta; // الـ delta إما يكون 1 أو -1
          final double unitPrice =
              cartItem.itemPrice ?? 0.0; // سعر الحبة الواحدة

          // نسخ العنصر بالبيانات والكمية والأسعار الجديدة محلياً
          return cartItem.copyWith(
            countItems: newCount,
            totalItemPrice: newCount * unitPrice,
          );
        }
        return cartItem; // بقية العناصر في السلة تبقى كما هي بدون تغيير
      })
      // إذا وصلت كمية المنتج الصفر (عند الضغط على ناقص)، يتم حذفه فوراً من القائمة المحلية
      .where((element) => (element.countItems ?? 0) > 0)
      .toList();

  return updatedList; // إرجاع القائمة الجديدة المعدلة
}
