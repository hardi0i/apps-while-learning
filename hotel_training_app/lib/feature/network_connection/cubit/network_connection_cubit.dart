import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app_for_sobes/common/base_status.dart';
import 'package:hotel_app_for_sobes/feature/network_connection/cubit/network_connection_state.dart';

class NetworkConnectionCubit extends Cubit<NetworkConnectionState> {
  NetworkConnectionCubit._() : super(const NetworkConnectionState());

  static final NetworkConnectionCubit _instance = NetworkConnectionCubit._();

  factory NetworkConnectionCubit() => _instance;

  Future<void> observeConnection() async {
    emit(
      state.copyWith(
        status: const BaseStatus.loading(),
      ),
    );

    final Connectivity connectivity = Connectivity();

    connectivity.onConnectivityChanged.listen(
      (result) async {
        switch (result) {
          case ConnectivityResult.none:
            emit(
              state.copyWith(
                status: const BaseStatus.invalid(),
              ),
            );
          case ConnectivityResult.mobile:
            emit(
              state.copyWith(
                status: const BaseStatus.valid(),
              ),
            );
          case ConnectivityResult.wifi:
            emit(
              state.copyWith(
                status: const BaseStatus.valid(),
              ),
            );
          default:
            emit(
              state.copyWith(
                status: const BaseStatus.loading(),
              ),
            );
        }
      },
    );
  }
}
