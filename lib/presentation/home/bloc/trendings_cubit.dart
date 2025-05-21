import 'package:blog_app/domain/movie/usecases/get_trending_movies.dart';
import 'package:blog_app/presentation/home/bloc/trendings_state.dart';
import 'package:blog_app/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendingCubit extends Cubit<TrendingState> {
  TrendingCubit() : super(TrendingMoviesLoading());

  void getTrendingMovies() async {
    var returnedData = await sl<GetTrendingMoviesUseCase>().call();
    returnedData.fold((error) {
      emit(FailureLoadTrendingMovies(
        errorMessage: error,
      ));
    }, (data) {
      emit(TrendingMoviesLoaded(movies: data));
    });
  }
}
