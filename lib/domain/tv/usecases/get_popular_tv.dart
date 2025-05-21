import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/domain/tv/repositories/tv_repo.dart';
import 'package:blog_app/service_locator.dart';
import 'package:dartz/dartz.dart';

class GetPopularTVUseCase extends UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<TVRepository>().getPopularTV();
  }
}
