import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/domain/movie/repositories/movie_repo.dart';
import 'package:blog_app/service_locator.dart';
import 'package:dartz/dartz.dart';

class GetMovieTrailerUseCase extends UseCase<Either, int> {
  @override
  Future<Either> call({int? params}) async {
    return await sl<MovieRepository>().getMovieTrailer(params!);
  }
}
