import 'package:dio/dio.dart';
import 'package:qanony/core/utils/remote_config.dart';
import 'package:qanony/features/search/data/model/search_model/search_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part "client.g.dart";

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST(RemoteConfig.searchUrl)
  Future<SearchModel> search(
      {@Query('search') String? searchName,
      @Query('limit') int? limit,
      @Query('filter') String? filter,
      @Query('page') int? page,
      @Query("per_page") int? perPage});
}
