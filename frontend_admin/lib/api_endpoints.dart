class ApiEndpoints {
  // السيرفر المحلي
  static const String baseUrl = "http://192.168.1.9:8000/api/admin";

  // -----------------------------------------------------------
  // 1. مسارات المصادقة (Auth)
  // -----------------------------------------------------------
  static const String login = "/login";
  static const String logout = "/logout";

  // استعادة كلمة المرور
  static const String checkEmail = "/forget/check-email";
  static const String verifyCode = "/forget/verify-code";
  static const String resetPassword = "/forget/reset-password";

  // -----------------------------------------------------------
  // 2.  (Categories)
  // -----------------------------------------------------------
  static const String categoriesView = "/categories/view";
  static const String categoriesAdd = "/categories/add";
  static String categoriesEdit(int id) => "/categories/$id/edit";
  static String categoriesRemove(int id) => "/categories/$id/remove";
  // -----------------------------------------------------------
  // 3.  (Items)
  // -----------------------------------------------------------
  static const String itemsView = "/items/view";
  static const String itemsAdd = "/items/add";
  static String itemsEdit(int id) => "/items/$id/edit";
  static String itemsRemove(int id) => "/items/$id/remove";
  // -----------------------------------------------------------
  // 3.  (Orders)
  // -----------------------------------------------------------
  static const String pending = "/orders/pending";
  static const String accepted = "/orders/accepted";
  static const String archive = "/orders/archived";
  static String orderDetails(int id) => "/orders/$id/details";
  static String approve(int id) => "/orders/$id/approve";
  static String reject(int id) => "/orders/$id/reject";
}
