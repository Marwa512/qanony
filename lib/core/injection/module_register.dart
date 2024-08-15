import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:qanony/core/utils/remote_config.dart';
import 'package:qanony/features/search/data/data_resourses/remote/client.dart';
import 'package:qanony/features/search/data/data_resourses/remote/dio.dart';

@module
abstract class RegisterModule {
  @Singleton()
  Dio get buildDio => buildDioClient(RemoteConfig.apiUrl);

  @Singleton()
  RestClient get restClient => RestClient(buildDio);
}
