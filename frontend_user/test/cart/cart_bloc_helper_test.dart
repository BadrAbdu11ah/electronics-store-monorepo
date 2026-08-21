import 'package:electronics_store/data/model/cart/cart_model.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:electronics_store/features/cart/function/cart_bloc_helper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Cart Bloc Helper Test", () {
    final mockSubtotal = 2400.0;
    final mockDiscountPercentage = 10;
    final mockDiscountAmount = 240.0;
    final mockShippingPrice = 15.0;

    test("Calculat Discount Amount", () {
      expect(
        calculateDiscountAmount(
          subtotal: mockSubtotal,
          discountPercentage: mockDiscountPercentage,
        ),
        240.0,
      );
    });

    test("Calculat Final Total", () {
      expect(
        calculateFinalTotal(
          subtotal: mockSubtotal,
          discountAmount: mockDiscountAmount,
          shippingPrice: mockShippingPrice,
        ),
        2175.0,
      );
    });

    test("Add Count Items", () {
      expect(
        addAndRemoveInCartItems(
          cartItems: <CartModel>[
            CartModel(
              item: ItemModel(
                id: 2,
                name: "Iphone",
                price: 2400.0,
                discount: 10,
                discountedPrice: 2175.0,
              ),
              countItems: 2,
              itemPrice: 2175.0,
              totalItemPrice: 4350.0,
            ),
          ],
          itemId: 2,
          delta: 1,
        ),
        [
          CartModel(
            item: ItemModel(
              id: 2,
              name: "Iphone",
              price: 2400.0,
              discount: 10,
              discountedPrice: 2175.0,
            ),
            countItems: 3,
            itemPrice: 2175.0,
            totalItemPrice: 6525.0,
          ),
        ],
      );
    });
    test("Remove Count Items", () {
      expect(
        addAndRemoveInCartItems(
          cartItems: <CartModel>[
            CartModel(
              item: ItemModel(
                id: 2,
                name: "Iphone",
                price: 2400.0,
                discount: 10,
                discountedPrice: 2175.0,
              ),
              countItems: 2,
              itemPrice: 2175.0,
              totalItemPrice: 4350.0,
            ),
          ],
          itemId: 2,
          delta: -1,
        ),
        [
          CartModel(
            item: ItemModel(
              id: 2,
              name: "Iphone",
              price: 2400.0,
              discount: 10,
              discountedPrice: 2175.0,
            ),
            countItems: 1,
            itemPrice: 2175.0,
            totalItemPrice: 2175.0,
          ),
        ],
      );
    });

    test("if countItems == 0 [delete]", () {
      expect(
        addAndRemoveInCartItems(
          cartItems: <CartModel>[
            CartModel(
              item: ItemModel(
                id: 2,
                name: "Iphone",
                price: 2400.0,
                discount: 10,
                discountedPrice: 2175.0,
              ),
              countItems: 1,
              itemPrice: 2175.0,
              totalItemPrice: 4350.0,
            ),
          ],
          itemId: 2,
          delta: -1,
        ),
        <CartModel>[],
      );
    });
  });
}
