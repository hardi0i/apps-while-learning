import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app_for_sobes/feature/rooms/presentation/cubit/rooms_cubit.dart';
import 'package:hotel_app_for_sobes/feature/rooms/presentation/widgets/rooms_loaded_view.dart';
import 'package:hotel_app_for_sobes/feature/views/error_view.dart';
import 'package:hotel_app_for_sobes/feature/views/loading_view.dart';

class RoomsBody extends StatelessWidget {
  const RoomsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final status = context.select((RoomsCubit cubit) => cubit.state.status);

    return status.maybeWhen(
      loading: () => const LoadingView(),
      failure: (error) => ErrorView(error: error),
      success: () => const RoomsLoadedView(),
      orElse: () => const SizedBox(),
    );
  }
}
