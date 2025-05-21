import 'package:blog_app/core/network/dio_client.dart';
import 'package:blog_app/data/auth/repositories/auth.dart';
import 'package:blog_app/data/auth/sources/auth_api_service.dart';
import 'package:blog_app/domain/auth/repositories/auth.dart';
import 'package:blog_app/domain/auth/usecases/signin.dart';
import 'package:blog_app/domain/auth/usecases/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  //  Services
  sl.registerSingleton<AuthApiService>(AuthApiServiceImpl());

  // Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  // Use Cases
  sl.registerSingleton<SignUpUseCase>(SignUpUseCase());
  sl.registerSingleton<SignInUseCase>(SignInUseCase());
}
