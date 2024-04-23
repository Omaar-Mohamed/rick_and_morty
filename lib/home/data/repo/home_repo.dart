import 'package:rick_and_morty/core/networking/api_result.dart';
import 'package:rick_and_morty/core/networking/api_service.dart';
import 'package:rick_and_morty/home/data/model/all_char_response_model.dart';

class HomeRepo {
  final ApiService _apiService;


  HomeRepo(this._apiService);

  Future<ApiResult<AllCharResponseModel>> getAllCharacters() async {
    try {
      final response = await _apiService.getAllCharacters();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(e.toString());
    }
  }
}