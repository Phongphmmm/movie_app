import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/domain/tv/repositories/tv_repo.dart';
import 'package:blog_app/service_locator.dart';
import 'package:dartz/dartz.dart';

class GetTVKeywordsUseCase extends UseCase<Either, int> {
  @override
  Future<Either> call({int? params}) async {
    return await sl<TVRepository>().getKeywords(params!);
  }
}
