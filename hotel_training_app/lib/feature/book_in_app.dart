import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:hotel_app_for_sobes/config/routes/routes.dart';
import 'package:hotel_app_for_sobes/config/theme/cubit/theme_cubit.dart';

class BookInApp extends StatelessWidget {
  BookInApp({super.key});

  final _router = BookInRouter();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (_, theme) {
        return MaterialApp.router(
          title: 'Book in',
          theme: theme,
          routerConfig: _router.config(),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
        );
      },
    );
  }
}
