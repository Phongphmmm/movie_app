import 'package:blog_app/data/auth/models/signin_req_params.dart';
import 'package:blog_app/data/auth/models/signup_req_params.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either> signup(SignupReqParams params);
  Future<Either> signin(SigninReqParams params);
  Future<bool> isLoggedIn();
}
