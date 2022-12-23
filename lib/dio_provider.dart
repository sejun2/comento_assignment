import 'package:dio/dio.dart';

class DioProvider{
  static const DEFAULT_TIMEOUT = 30000;

 static final comentoApiClient = Dio(
   BaseOptions(
      connectTimeout: DEFAULT_TIMEOUT,
     baseUrl: 'https://problem.comento.kr',
      headers:  {'Accept' : 'application/json'},
   )
  );
}