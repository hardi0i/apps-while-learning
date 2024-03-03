import 'package:di_clean_architecture_solid/common/app_colors.dart';
import 'package:di_clean_architecture_solid/feature/presentetion/bloc/person_list_cubit/person_list_cubit.dart';
import 'package:di_clean_architecture_solid/feature/presentetion/bloc/search_bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './locator_service.dart' as di;
import 'locator_service.dart';
import './feature/presentetion/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PersonListCubit>(
          create: (context) => sl<PersonListCubit>()..loadPerson(),
        ),
        BlocProvider(
          create: (context) => sl<PersonSearchBloc>(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          backgroundColor: AppColors.mainBackground,
          scaffoldBackgroundColor: AppColors.mainBackground,
        ),
        home: HomePage(),
      ),
    );
  }
}
