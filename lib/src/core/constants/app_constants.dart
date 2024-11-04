import 'package:logger/web.dart';

class AppConstants {
  const AppConstants._();

  static const String apiBaseUrl = 'https://tentofree-bd81aaf9897b.herokuapp.com/api';

  static const String refreshToken = 'refresh-token';
  static const cartKey = 'cartKey';
  static const String sendTicketUrl = '/vendor-register/contact-us-form-request/';
  
}


Map<String,String> requestType = {
  "TRAINING_AND_ONBOARDING" : "Training and onboarding",
  "SECURITY_CONCERNS" : "Security concerns",
  "ACCESSIBILITY_REQUESTS" : "Accessibility requests",
  "FEEDBACK_AND_SUGGESTIONS" : "Feedback and suggestions",
  "CUSTOMER_SERVICE" : "Customer service",
  "PRODUCT_SUPPORT" : "Product support",
  "ACCOUNT_MANAGEMENT" : "Account management",
  "TECHNICAL_SUPPORT" : "Techincal support",
};

Logger logger = Logger(
  printer: HybridPrinter(
    PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 140,
    ),
    error: PrettyPrinter(
      methodCount: 15,
      errorMethodCount: 5,
      lineLength: 140,
    ),
    fatal: PrettyPrinter(
      methodCount: 15,
      errorMethodCount: 5,
      lineLength: 140,
    ),
    trace: PrettyPrinter(
      methodCount: 25,
      errorMethodCount: 5,
      lineLength: 140,
    ),
    warning: PrettyPrinter(
      methodCount: 5,
      errorMethodCount: 5,
      lineLength: 140,
    ),
  ),
);

