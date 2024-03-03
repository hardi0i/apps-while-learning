import 'dart:io';

import 'package:clean_architecture_exmpl/core/constants/constants.dart';
import 'package:clean_architecture_exmpl/core/resources/data_state.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/data/data_sources/local/app_database.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/data/models/article.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/domain/entities/article.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/domain/repository/article_repository.dart';
import 'package:dio/dio.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;
  final AppDatabase _appDatabase;

  ArticleRepositoryImpl(this._newsApiService, this._appDatabase);

  @override
  Future<DataState<List<ArticleEntity>>> getNewsArticles() async {
    try {
      final httpResponse = await _newsApiService.getNewsArticles(
        apiKey: apiKey,
        category: categoryQuery,
        country: countryQuery,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioException(
            requestOptions: httpResponse.response.requestOptions,
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<void> deleteArticle(ArticleEntity article) async {
    return await _appDatabase.articleDao.deleteArticle(
      ArticleModel.fromEntity(article),
    );
  }

  @override
  Future<List<ArticleModel>> getSavedArticles() async {
    return await _appDatabase.articleDao.getArticles();
  }

  @override
  Future<void> saveArticle(ArticleEntity article) async {
    return await _appDatabase.articleDao.insertArticle(
      ArticleModel.fromEntity(article),
    );
  }
}
