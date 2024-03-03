import 'package:clean_architecture_exmpl/feature/daily_news/domain/entities/article.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/presentation/bloc/article/remote/remote_article_state.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/presentation/widgets/article_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DailyNews extends StatelessWidget {
  const DailyNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(),
    );
  }

  _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Daily News'),
      actions: [
        GestureDetector(
          onTap: () => _onShowSavedArticlesViewTapped(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Icon(Icons.bookmark, color: Colors.black),
          ),
        ),
      ],
    );
  }

  _buildBody() {
    return BlocBuilder<RemoteArticlesBloc, RemoteArticleState>(
      builder: (_, state) {
        if (state is RemoteArticleLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is RemoteArticleError) {
          return const Center(
            child: Icon(Icons.refresh),
          );
        }

        if (state is RemoteArticleDone) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return ArticleWidget(
                article: state.articles![index],
                onArticlePressed: (article) =>
                    _onArticlePressed(context, article),
              );
            },
            itemCount: state.articles!.length,
          );
        }

        return const SizedBox();
      },
    );
  }

  void _onArticlePressed(BuildContext context, ArticleEntity article) {
    Navigator.pushNamed(context, '/ArticleDetails', arguments: article);
  }

  void _onShowSavedArticlesViewTapped(BuildContext context) {
    Navigator.pushNamed(context, '/SavedArticles');
  }
}
