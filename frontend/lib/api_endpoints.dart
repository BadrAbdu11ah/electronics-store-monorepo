class ApiEndpoints {
  // السيرفر المحلي
  static const String baseUrl = "http://192.168.1.6:8000/api";

  // -----------------------------------------------------------
  // 1. مسارات المصادقة (Auth)
  // -----------------------------------------------------------
  static const String login = "/login";
  static const String signup = "/signup";
  static const String verifyCode = "/auth/verify-code";

  // استعادة كلمة المرور
  static const String checkEmail = "/forgetpassword/checkemail";
  static const String forgetVerifyCode = "/forgetpassword/verifycode";
  static const String resetPassword = "/forgetpassword/reset-password";
  static const String resetVerifyCode = "/forgetpassword/reset-verify-code";

  // -----------------------------------------------------------
  // 2. الرئيسية والمنتجات (Home & Items)
  // -----------------------------------------------------------
  static const String home = "/home";
  static const String searchItems = "/items/search";
  static String itemsByCategory(int id) => "/items/view/$id";

  // -----------------------------------------------------------
  // 3. المفضلة (Favorite)
  // -----------------------------------------------------------
  static const String favoriteView = "/favorite/view";
  static const String favoriteAdd = "/favorite/add";
  static String favoriteRemove(int id) => "/favorite/remove/$id";

  // -----------------------------------------------------------
  // 4. السلة (Cart)
  // -----------------------------------------------------------
  static const String cartView = "/cart/view";
  static const String cartAdd = "/cart/add";
  static String cartRemove(int id) => "/cart/remove/$id";
  static String cartDelete(int id) => "/cart/delete/$id";
  static String cartCount(int id) => "/cart/count/$id";

  // -----------------------------------------------------------
  // 5. العناوين (Address)
  // -----------------------------------------------------------
  static const String addressView = "/address/view";
  static const String addressAdd = "/address/add";
  static String addressEdit(int id) => "/address/edit/$id";
  static String addressRemove(int id) => "/address/remove/$id";

  // -----------------------------------------------------------
  // 6. الكوبونات والطلبات (Coupon & Orders)
  // -----------------------------------------------------------
  static const String checkCoupon = "/coupon/check";

  static const String checkout = "/order/checkout";
  static const String pending = "/order/pending";
  static String orderDetails(int id) => "/order/details/$id";
}
