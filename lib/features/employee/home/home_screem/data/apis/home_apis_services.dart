

import 'package:alhayik/core/networking/api_constant.dart';
import 'package:alhayik/features/employee/home/home_screem/data/apis/home_apis_constant.dart';
import 'package:alhayik/features/employee/home/home_screem/data/model/items_apis_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';



part 'home_apis_services.g.dart';

@RestApi(baseUrl : ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationsResponseModel> getSpecialization();
}