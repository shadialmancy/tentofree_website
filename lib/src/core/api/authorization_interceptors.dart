// Request methods PUT, POST, PATCH, DELETE needs access token,
// which needs to be passed with "Authorization" header as Bearer token.
import 'package:dio/dio.dart';

class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    //TODO: Add dynamic token here
    options.headers['Authorization'] = 'Bearer token';

    super.onRequest(options, handler);
  }
}
