import 'package:blog_app/core/network/dio_client.dart';
import 'package:blog_app/data/auth/repositories/auth.dart';
import 'package:blog_app/data/auth/sources/auth_api_service.dart';
import 'package:blog_app/data/movie/repositories/movie_repo_impl.dart';
import 'package:blog_app/data/movie/sources/movie_sources.dart';
import 'package:blog_app/data/tv/repositories/tv_repo_impl.dart';
import 'package:blog_app/data/tv/sources/tv_sources.dart';
import 'package:blog_app/domain/auth/repositories/auth.dart';
import 'package:blog_app/domain/auth/usecases/is_logged_in.dart';
import 'package:blog_app/domain/auth/usecases/signin.dart';
import 'package:blog_app/domain/auth/usecases/signup.dart';
import 'package:blog_app/domain/movie/repositories/movie_repo.dart';
import 'package:blog_app/domain/movie/usecases/get_movie_trailer.dart';
import 'package:blog_app/domain/movie/usecases/get_now_playing_movies.dart';
import 'package:blog_app/domain/movie/usecases/get_recommendation_movies.dart';
import 'package:blog_app/domain/movie/usecases/get_similar_movies.dart';
import 'package:blog_app/domain/movie/usecases/get_trending_movies.dart';
import 'package:blog_app/domain/movie/usecases/search_movie.dart';
import 'package:blog_app/domain/tv/repositories/tv_repo.dart';
import 'package:blog_app/domain/tv/usecases/get_keywords.dart';
import 'package:blog_app/domain/tv/usecases/get_popular_tv.dart';
import 'package:blog_app/domain/tv/usecases/get_recommend_tvs.dart';
import 'package:blog_app/domain/tv/usecases/get_similar_tvs.dart';
import 'package:blog_app/domain/tv/usecases/search_tv.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  //  Services
  sl.registerSingleton<AuthService>(AuthApiServiceImpl());
  sl.registerSingleton<MovieService>(MovieApiServiceImpl());
  sl.registerSingleton<TVService>(TVApiServiceImpl());

  // Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  sl.registerSingleton<MovieRepository>(MovieRepositoryImpl());
  sl.registerSingleton<TVRepository>(TVRepositoryImpl());

  // Use Cases
  sl.registerSingleton<SignUpUseCase>(SignUpUseCase());
  sl.registerSingleton<SignInUseCase>(SignInUseCase());
  sl.registerSingleton<IsLoggedInUseCase>(IsLoggedInUseCase());
  sl.registerSingleton<GetTrendingMoviesUseCase>(GetTrendingMoviesUseCase());
  sl.registerSingleton<GetNowPlayingMoviesUseCase>(
      GetNowPlayingMoviesUseCase());
  sl.registerSingleton<GetMovieTrailerUseCase>(GetMovieTrailerUseCase());
  sl.registerSingleton<GetRecommendationMoviesUseCase>(
      GetRecommendationMoviesUseCase());
  sl.registerSingleton<GetSimilarMoviesUseCase>(GetSimilarMoviesUseCase());
  sl.registerSingleton<GetSimilarTvsUseCase>(GetSimilarTvsUseCase());
  sl.registerSingleton<GetRecommendationTvsUseCase>(
      GetRecommendationTvsUseCase());
  sl.registerSingleton<GetTVKeywordsUseCase>(GetTVKeywordsUseCase());
  sl.registerSingleton<SearchMovieUseCase>(SearchMovieUseCase());
  sl.registerSingleton<SearchTVUseCase>(SearchTVUseCase());
  sl.registerSingleton<GetPopularTVUseCase>(GetPopularTVUseCase());
}
