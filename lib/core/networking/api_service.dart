import 'package:alhayik/core/networking/api_constant.dart';
import 'package:alhayik/features/auth/sign_in/data/models/login_reques_body.dart';
import 'package:alhayik/features/auth/sign_in/data/models/login_response.dart';
import 'package:alhayik/features/auth/sign_up/data/models/sign_up_request_body.dart';
import 'package:alhayik/features/auth/sign_up/data/models/sign_up_response.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

   @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

   @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}