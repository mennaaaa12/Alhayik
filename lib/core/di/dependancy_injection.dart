import 'package:alhayik/core/networking/api_service.dart';
import 'package:alhayik/core/networking/dio_factory.dart';
import 'package:alhayik/features/auth/sign_in/data/repository/login_repo.dart';
import 'package:alhayik/features/auth/sign_in/logic/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

}