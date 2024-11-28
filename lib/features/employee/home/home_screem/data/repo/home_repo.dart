

import 'package:alhayik/core/networking/api_error_handler.dart';
import 'package:alhayik/core/networking/api_result.dart';
import 'package:alhayik/features/employee/home/home_screem/data/apis/home_apis_services.dart';
import 'package:alhayik/features/employee/home/home_screem/data/model/items_apis_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}