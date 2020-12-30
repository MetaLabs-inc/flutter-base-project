import 'dart:async';
import 'dart:core';

import 'package:dio/dio.dart';

abstract class HttpService {
  Future<dynamic> get(String uri, {Object params, Options options});

  Future<dynamic> post(String uri, dynamic body);

  Future<dynamic> put(String uri, dynamic body);

  Future<dynamic> delete(String uri);
}
