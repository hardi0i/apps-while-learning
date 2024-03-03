import 'package:clean_architecture_exmpl/feature/daily_news/domain/entities/article.dart';
import 'package:equatable/equatable.dart';

abstract class LocalArticlesState extends Equatable {
  const LocalArticlesState({this.articles});

  final List<ArticleEntity>? articles;

  @override
  List<Object> get props => [
        articles!,
      ];
}

class LocalArticlesLoading extends LocalArticlesState {
  const LocalArticlesLoading();
}

class LocalArticlesLoaded extends LocalArticlesState {
  const LocalArticlesLoaded(List<ArticleEntity> articles)
      : super(articles: articles);
}
