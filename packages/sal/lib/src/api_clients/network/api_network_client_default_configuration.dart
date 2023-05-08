import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:validators/sanitizers.dart';
import 'api_network_client_configuration.dart';

class ApiNetworkClientDefaultConfiguration implements ApiNetworkClientConfiguration {
  final String apiUrl;
  final bool enableLogging;
  final Duration timeout;

  const ApiNetworkClientDefaultConfiguration(this.apiUrl,
      {this.enableLogging = true, this.timeout = const Duration(seconds: 60)});

  @override
  String getRequestAddress(String relativeAddress) {
    return '${rtrim(apiUrl, '/')}/$relativeAddress';
  }

  @override
  Client get httpClient =>
      InterceptedClient.build(interceptors: enableLogging ? [_LoggingInterceptor()] : [], requestTimeout: timeout);
}

class _LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    debugPrint("Sending ${data.method.name} request to ${data.url}, body=${data.body}");
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    debugPrint("Request to ${data.url} completed with status code ${data.statusCode}, body=${data.body}");
    return data;
  }
}
