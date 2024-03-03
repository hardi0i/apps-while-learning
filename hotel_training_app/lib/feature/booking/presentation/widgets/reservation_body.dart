import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/reservation/reservation_cubit.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/widgets/reservation_loaded_view.dart';
import 'package:hotel_app_for_sobes/feature/views/error_view.dart';
import 'package:hotel_app_for_sobes/feature/views/loading_view.dart';

class ReservationBody extends StatelessWidget {
  const ReservationBody({super.key});

  @override
  Widget build(BuildContext context) {
    final status =
        context.select((ReservationCubit cubit) => cubit.state.status);

    return status.maybeWhen(
      loading: () => const LoadingView(),
      failure: (error) => ErrorView(error: error),
      success: () => const ReservationLoadedView(),
      orElse: () => const SizedBox(),
    );
  }
}
