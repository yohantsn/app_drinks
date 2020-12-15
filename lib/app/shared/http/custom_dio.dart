import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'interceptors/cache_interceptor.dart';
import 'interceptors/custommer_interceptor.dart';

part 'custom_dio.g.dart';

@Injectable()
class CustomDIO extends DioForNative{
  CustomDIO([BaseOptions options]) : super(options){
    interceptors.add(CustomInterceptor());
    interceptors.add(CacheInterceptors());
  }
}