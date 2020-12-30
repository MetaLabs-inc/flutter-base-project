import 'dart:async';
import 'package:butterfly/src/core/services/http_service.dart';
import 'package:dio/dio.dart';

class HttpServiceDio implements HttpService {
  Dio dio;

  HttpServiceDio() {
    BaseOptions options =
        new BaseOptions(baseUrl: '<Replace with backend url using a .env>');
    this.dio = new Dio(options);
  }

  @override
  Future<dynamic> delete(String uri) {
    return this.dio.delete(uri);
  }

  @override
  Future<dynamic> get(String uri, {Object params, Options options}) {
    return this.dio.get(
          uri,
          queryParameters: params,
          options: options,
        );
  }

  @override
  Future<dynamic> post(String uri, body) {
    return this.dio.post(uri, data: body);
  }

  @override
  Future<dynamic> put(String uri, body) {
    return this.dio.put(uri, data: body);
  }
}
