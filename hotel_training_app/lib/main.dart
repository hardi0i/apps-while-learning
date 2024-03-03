import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app_for_sobes/config/theme/cubit/theme_cubit.dart';
import 'package:hotel_app_for_sobes/di/injection_container.dart';
import 'package:hotel_app_for_sobes/feature/book_in_app.dart';
import 'package:hotel_app_for_sobes/feature/network_connection/cubit/network_connection_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await initializeDependencies();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<NetworkConnectionCubit>(
          create: (_) => sl()..observeConnection(),
        ),
        BlocProvider<ThemeCubit>(
          create: (_) => sl(),
        ),
      ],
      child: BookInApp(),
    ),
  );
}
