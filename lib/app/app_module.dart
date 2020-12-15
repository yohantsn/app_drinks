import 'package:app_cocktais/app/shared/constants/api.dart';
import 'package:app_cocktais/app/shared/http/custom_dio.dart';
import 'package:dio/dio.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:app_cocktais/app/app_widget.dart';
import 'package:app_cocktais/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        $CustomDIO,
        Bind((i) => BaseOptions(baseUrl: ConstantsApi().url_List_Popular, connectTimeout: 5000,))
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
