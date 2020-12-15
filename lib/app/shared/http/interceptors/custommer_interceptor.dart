
import 'package:app_cocktais/app/shared/constants/api.dart';
import 'package:dio/dio.dart';

class CustomInterceptor extends InterceptorsWrapper{
  @override
  Future onError(DioError err) {
    throw err;
  }

  @override
  Future onRequest(RequestOptions options) async{
    options.headers["x-rapidapi-key"] = ConstantsApi().x_rapidapi_key;
    options.headers["x-rapidapi-host"] = ConstantsApi().x_rapidapi_host;
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) async {
    return super.onResponse(response);
  }
  
}