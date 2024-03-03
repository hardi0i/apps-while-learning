import 'package:clean_architecture_exmpl/core/usecase/usecase.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/domain/entities/article.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/domain/repository/article_repository.dart';

class GetSavedArticlesUseCase implements UseCase<List<ArticleEntity>, void> {
  final ArticleRepository _articelRepository;

  GetSavedArticlesUseCase(this._articelRepository);
  @override
  Future<List<ArticleEntity>> call({void params}) {
    return _articelRepository.getSavedArticles();
  }
}
