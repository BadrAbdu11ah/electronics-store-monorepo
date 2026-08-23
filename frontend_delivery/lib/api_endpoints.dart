class ApiEndpoints {
  // السيرفر المحلي
  static const String baseUrl = "http://192.168.1.9:8000/api/delivery";

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
  // 2.  (Orders)
  // -----------------------------------------------------------
  static const String pending = "/orders/pending";
  static const String accepted = "/orders/accepted";
  static const String archive = "/orders/archived";
  static String orderDetails(int id) => "/orders/$id/details";
  static String approve(int id) => "/orders/$id/approve";
  static String done(int id) => "/orders/$id/done";
}
