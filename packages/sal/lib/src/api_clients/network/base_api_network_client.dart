import "dart:convert";
import "package:flutter/foundation.dart";
import 'package:http/http.dart';
import "api_network_client_configuration.dart";
import 'other/http_request_exception.dart';

class BaseApiNetworkClient {
  final ApiNetworkClientConfiguration configuration;

  BaseApiNetworkClient(this.configuration);

  Future<TResponse> makeRequest<TRequest, TResponse>(
      String method,
      String relativeUrl,
      TRequest? request,
      dynamic Function(TRequest)? toRequestJson,
      TResponse Function(dynamic) fromResponseJson,
      String? accessToken) async {
    final url = Uri.parse(configuration.getRequestAddress(relativeUrl));
    final requestBody =
        request != null && toRequestJson != null ? jsonEncode(await compute(toRequestJson, request)) : null;
    var headers = {'Content-Type': 'application/json', 'Cache-Control': 'no-cache'};
    if (accessToken != null) {
      headers["Authorization"] = "Bearer $accessToken";
    }
    Response? response;
    switch (method) {
      case "GET":
        response = await configuration.httpClient.get(url, headers: headers);
        break;
      case "POST":
        response = await configuration.httpClient.post(url, headers: headers, body: requestBody);
        break;
      case "PATCH":
        response = await configuration.httpClient.patch(url, headers: headers, body: requestBody);
        break;
      case "PUT":
        response = await configuration.httpClient.put(url, headers: headers, body: requestBody);
        break;
      case "DELETE":
        response = await configuration.httpClient.delete(url, headers: headers, body: requestBody);
        break;
      case "HEAD":
        response = await configuration.httpClient.head(url, headers: headers);
        break;
      default:
        throw Exception("Unsupported HTTP method $method");
    }
    try {
      final responseMap = jsonDecode(response.body);
      return await compute(fromResponseJson, responseMap);
    } catch (ex) {
      if (response.statusCode >= 300) {
        throw HttpRequestException(url.toString(), response.statusCode, response.body);
      }
      rethrow;
    }
  }

  String buildQueryAddress(String pattern, List<MapEntry<String, String?>> queryParameters) {
    var queryString = "";
    final segments = pattern.split('/');
    for (final item in queryParameters) {
      if (item.value == null) {
        continue;
      }
      final segmentIndex = segments.indexOf("{${item.key}}");
      final encodedName = Uri.encodeComponent(item.key);
      final encodedValue = Uri.encodeComponent(item.value!);
      if (segmentIndex != -1) {
        segments[segmentIndex] = encodedValue;
      } else {
        queryString += "${queryString.isEmpty ? "?" : "&"}$encodedName=$encodedValue";
      }
    }
    return segments.join("/") + queryString;
  }
}
