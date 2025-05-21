import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/data/auth/models/signup_req_params.dart';
import 'package:blog_app/domain/auth/repositories/auth.dart';
import 'package:blog_app/service_locator.dart';
import 'package:dartz/dartz.dart';

class SignUpUseCase extends UseCase<Either, SignupReqParams> {
  @override
  Future<Either> call({SignupReqParams? params}) async {
    return await sl<AuthRepository>().signup(params!);
  }
}
