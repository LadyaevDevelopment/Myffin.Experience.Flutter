import 'package:http/http.dart' as http;

abstract class ApiNetworkClientConfiguration {
  String getRequestAddress(String relativeAddress);

  http.Client get httpClient;
}
