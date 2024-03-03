import 'package:clean_architecture_exmpl/core/usecase/usecase.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/domain/entities/article.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/domain/repository/article_repository.dart';

class RemoveArticleUseCase implements UseCase<void, ArticleEntity> {
  final ArticleRepository _articelRepository;

  RemoveArticleUseCase(this._articelRepository);
  @override
  Future<void> call({ArticleEntity? params}) {
    return _articelRepository.deleteArticle(params!);
  }
}
