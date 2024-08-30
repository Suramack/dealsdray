import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_device_info_request_model.freezed.dart';
part 'add_device_info_request_model.g.dart';

AddDeviceRequestModel addDeviceRequestModelFromJson(String str) =>
    AddDeviceRequestModel.fromJson(json.decode(str));

@freezed
class AddDeviceRequestModel with _$AddDeviceRequestModel {
  const factory AddDeviceRequestModel({
    String? deviceType,
    String? deviceId,
    String? deviceName,
    String? deviceOsVersion,
    String? deviceIpAddress,
    double? lat,
    double? long,
    String? buyerGcmid,
    String? buyerPemid,
    dynamic app,
  }) = _AddDeviceRequestModel;

  factory AddDeviceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddDeviceRequestModelFromJson(json);
}
