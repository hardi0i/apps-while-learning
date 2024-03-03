import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_app_for_sobes/common/base_status.dart';

part 'network_connection_state.freezed.dart';

@freezed
class NetworkConnectionState with _$NetworkConnectionState {
  const factory NetworkConnectionState({
    @Default(BaseStatus.initial()) BaseStatus status,
  }) = _NetworkConnectionState;
}
