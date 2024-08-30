// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_device_info_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddDeviceRequestModelImpl _$$AddDeviceRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddDeviceRequestModelImpl(
      deviceType: json['deviceType'] as String?,
      deviceId: json['deviceId'] as String?,
      deviceName: json['deviceName'] as String?,
      deviceOsVersion: json['deviceOsVersion'] as String?,
      deviceIpAddress: json['deviceIpAddress'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      long: (json['long'] as num?)?.toDouble(),
      buyerGcmid: json['buyerGcmid'] as String?,
      buyerPemid: json['buyerPemid'] as String?,
      app: json['app'],
    );

Map<String, dynamic> _$$AddDeviceRequestModelImplToJson(
        _$AddDeviceRequestModelImpl instance) =>
    <String, dynamic>{
      'deviceType': instance.deviceType,
      'deviceId': instance.deviceId,
      'deviceName': instance.deviceName,
      'deviceOsVersion': instance.deviceOsVersion,
      'deviceIpAddress': instance.deviceIpAddress,
      'lat': instance.lat,
      'long': instance.long,
      'buyerGcmid': instance.buyerGcmid,
      'buyerPemid': instance.buyerPemid,
      'app': instance.app,
    };
