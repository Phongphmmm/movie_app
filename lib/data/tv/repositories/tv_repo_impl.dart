import 'package:blog_app/common/helper/mapper/keyword.dart';
import 'package:blog_app/common/helper/mapper/tv.dart';
import 'package:blog_app/core/models/keyword.dart';
import 'package:blog_app/data/tv/models/tv.dart';
import 'package:blog_app/data/tv/sources/tv_sources.dart';
import 'package:blog_app/domain/tv/repositories/tv_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../service_locator.dart';

class TVRepositoryImpl extends TVRepository {
  @override
  Future<Either> getPopularTV() async {
    var returnedData = await sl<TVService>().getPopularTv();

    return returnedData.fold((error) {
      return Left(error);
    }, (data) {
      var movies = List.from(data['content'])
          .map((item) => TvMapper.toEntity(TVModel.fromJson(item)))
          .toList();
      return Right(movies);
    });
  }

  @override
  Future<Either> getRecommendationTVs(int tvId) async {
    var returnedData = await sl<TVService>().getRecommendationTVs(tvId);
    return returnedData.fold((error) {
      return Left(error);
    }, (data) {
      var movies = List.from(data['content'])
          .map((item) => TvMapper.toEntity(TVModel.fromJson(item)))
          .toList();
      return Right(movies);
    });
  }

  @override
  Future<Either> getSimilarTVs(int tvId) async {
    var returnedData = await sl<TVService>().getSimilarTVs(tvId);
    return returnedData.fold((error) {
      return Left(error);
    }, (data) {
      var movies = List.from(data['content'])
          .map((item) => TvMapper.toEntity(TVModel.fromJson(item)))
          .toList();
      return Right(movies);
    });
  }

  @override
  Future<Either> getKeywords(int tvId) async {
    var returnedData = await sl<TVService>().getKeywords(tvId);
    return returnedData.fold((error) {
      return Left(error);
    }, (data) {
      var movies = List.from(data['content'])
          .map((item) => KeywordMapper.toEntity(KeywordModel.fromJson(item)))
          .toList();
      return Right(movies);
    });
  }

  @override
  Future<Either> searchTV(String query) async {
    var returnedData = await sl<TVService>().searchTV(query);
    return returnedData.fold((error) {
      return Left(error);
    }, (data) {
      var movies = List.from(data['content'])
          .map((item) => TvMapper.toEntity(TVModel.fromJson(item)))
          .toList();
      return Right(movies);
    });
  }
}
