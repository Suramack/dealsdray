import 'package:freezed_annotation/freezed_annotation.dart';
part 'device_info_state_model.freezed.dart';

@freezed
class DeviceInfoState with _$DeviceInfoState {
  const factory DeviceInfoState({
    @Default(null) double? lat,
    @Default(null) double? lon,
    @Default(null) String? deviceId,
  }) = _DeviceInfoState;
}
