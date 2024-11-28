import 'package:alhayik/core/helpers/constants.dart';
import 'package:alhayik/core/helpers/shared_pref_helper.dart';
import 'package:alhayik/core/networking/dio_factory.dart';
import 'package:alhayik/features/auth/sign_in/data/models/login_reques_body.dart';
import 'package:alhayik/features/auth/sign_in/data/repository/login_repo.dart';
import 'package:alhayik/features/auth/sign_in/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
  response.when(success: (loginResponse) async {
      await saveUserToken(loginResponse.token ?? '');
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}