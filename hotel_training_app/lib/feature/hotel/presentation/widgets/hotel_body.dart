import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app_for_sobes/feature/hotel/presentation/cubit/hotels_cubit.dart';
import 'package:hotel_app_for_sobes/feature/hotel/presentation/widgets/hotel_loaded_view.dart';
import 'package:hotel_app_for_sobes/feature/views/error_view.dart';
import 'package:hotel_app_for_sobes/feature/views/loading_view.dart';

class HotelBody extends StatelessWidget {
  const HotelBody({super.key});

  @override
  Widget build(BuildContext context) {
    final status = context.select((HotelsCubit cubit) => cubit.state.status);

    return status.maybeWhen(
      loading: () => const LoadingView(),
      failure: (error) => ErrorView(error: error),
      success: () => const HotelLoadedView(),
      orElse: () => const SizedBox(),
    );
  }
}
