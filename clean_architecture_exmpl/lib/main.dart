import 'package:clean_architecture_exmpl/config/routes/routes.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:clean_architecture_exmpl/feature/daily_news/presentation/pages/home/daily_news.dart';
import 'package:clean_architecture_exmpl/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()
        ..add(
          const GetArticles(),
        ),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoutes.onGenerateRoutes,
        home: DailyNews(),
      ),
    );
  }
}
