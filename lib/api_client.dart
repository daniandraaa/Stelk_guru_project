import 'package:grpc/grpc.dart';

class ApiClient {
  static final ApiClient _singleton = ApiClient._internal();

  factory ApiClient() {
    return _singleton;
  }

  ApiClient._internal();

  ClientChannel get channel => ClientChannel('host', port: 443);

}