import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hotel_app_for_sobes/feature/rooms/presentation/cubit/rooms_cubit.dart';
import 'package:hotel_app_for_sobes/feature/rooms/presentation/widgets/room_list_tile.dart';

class RoomsLoadedView extends StatelessWidget {
  const RoomsLoadedView({super.key});

  @override
  Widget build(BuildContext context) {
    final rooms = context.select((RoomsCubit cubit) => cubit.state.rooms);

    return ListView.builder(
      itemCount: rooms.length,
      itemBuilder: (context, i) {
        return RoomListTile(
          room: rooms[i],
        );
      },
    );
  }
}
