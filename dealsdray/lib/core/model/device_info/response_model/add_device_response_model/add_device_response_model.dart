import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_device_response_model.freezed.dart';
part 'add_device_response_model.g.dart';

@freezed
class DeviceResponseData with _$DeviceResponseData {
  const factory DeviceResponseData({
    String? message,
    String? deviceId,
  }) = _DeviceResponseData;

  factory DeviceResponseData.fromJson(Map<String, dynamic> json) => _$DeviceResponseDataFromJson(json);
}
