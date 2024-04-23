import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:rick_and_morty/home/data/model/all_char_response_model.dart';

import 'api_constants.dart';

part "api_service.g.dart";
// 3o : this is like remote data source
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;
  //
  @GET(ApiConstants.allCharEP)
  Future<AllCharResponseModel> getAllCharacters();
}