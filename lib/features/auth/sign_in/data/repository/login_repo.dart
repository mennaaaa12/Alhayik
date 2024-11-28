


import 'package:alhayik/core/networking/api_error_handler.dart';
import 'package:alhayik/core/networking/api_result.dart';
import 'package:alhayik/core/networking/api_service.dart';
import 'package:alhayik/features/auth/sign_in/data/models/login_reques_body.dart';
import 'package:alhayik/features/auth/sign_in/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}