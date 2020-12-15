import 'package:dio/dio.dart';

class CacheInterceptors extends InterceptorsWrapper{
  @override
  Future onResponse(Response response) async {
    print('Response[${response.statusCode}] => PATH: ${response.request.path}');
    return super.onResponse(response);
  }
}