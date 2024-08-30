// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendOtpResponseModelImpl _$$SendOtpResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SendOtpResponseModelImpl(
      message: json['message'] as String?,
      deviceId: json['deviceId'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$SendOtpResponseModelImplToJson(
        _$SendOtpResponseModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'deviceId': instance.deviceId,
      'userId': instance.userId,
    };
