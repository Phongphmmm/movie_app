import 'package:blog_app/data/auth/models/signup_req_params.dart';
import 'package:blog_app/data/auth/sources/auth_api_service.dart';
import 'package:blog_app/domain/auth/repositories/auth.dart';
import 'package:blog_app/service_locator.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signup(SignupReqParams params) async {
    return await sl<AuthApiService>().signup(params);
  }

  @override
  Future<Either> signin(params) async {
    return await sl<AuthApiService>().signin(params);
  }
}
