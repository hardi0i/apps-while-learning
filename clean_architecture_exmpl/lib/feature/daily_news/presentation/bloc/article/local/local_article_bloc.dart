import 'package:clean_architecture_exmpl/feature/daily_news/domain/usecases/get_saved_article.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/domain/usecases/remove_article.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/domain/usecases/save_article.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/presentation/bloc/article/local/local_article_event.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/presentation/bloc/article/local/local_article_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocalArticleBloc extends Bloc<LocalArticlesEvent, LocalArticlesState> {
  final SaveArticleUseCase _saveArticleUseCase;
  final GetSavedArticlesUseCase _getSavedArticlesUseCase;
  final RemoveArticleUseCase _removeArticleUseCase;

  LocalArticleBloc(
    this._saveArticleUseCase,
    this._getSavedArticlesUseCase,
    this._removeArticleUseCase,
  ) : super(
          const LocalArticlesLoading(),
        ) {
    on<GetSavedArticles>(onGetSaveArticle);
    on<RemoveArticle>(onRemoveArticle);
    on<SaveArticle>(onSaveArticle);
  }

  void onGetSaveArticle(GetSavedArticles getSavedArticles,
      Emitter<LocalArticlesState> emit) async {
    final articles = await _getSavedArticlesUseCase();

    emit(
      LocalArticlesLoaded(articles),
    );
  }

  void onRemoveArticle(
      RemoveArticle removeArticle, Emitter<LocalArticlesState> emit) async {
    await _removeArticleUseCase(
      params: removeArticle.article,
    );

    final articles = await _getSavedArticlesUseCase();
    emit(
      LocalArticlesLoaded(articles),
    );
  }

  void onSaveArticle(
      SaveArticle saveArticle, Emitter<LocalArticlesState> emit) async {
    await _saveArticleUseCase(
      params: saveArticle.article,
    );

    final articles = await _getSavedArticlesUseCase();
    emit(
      LocalArticlesLoaded(articles),
    );
  }
}
