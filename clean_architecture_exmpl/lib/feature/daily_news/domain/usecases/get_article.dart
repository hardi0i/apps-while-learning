import 'package:clean_architecture_exmpl/core/resources/data_state.dart';
import 'package:clean_architecture_exmpl/core/usecase/usecase.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/domain/entities/article.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/domain/repository/article_repository.dart';

class GetArticleUseCase
    implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articelRepository;

  GetArticleUseCase(this._articelRepository);
  @override
  Future<DataState<List<ArticleEntity>>> call({params}) {
    return _articelRepository.getNewsArticles();
  }
}
