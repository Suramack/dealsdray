// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidateOtpResponseModelImpl _$$ValidateOtpResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateOtpResponseModelImpl(
      message: json['message'] as String?,
      deviceId: json['deviceId'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$ValidateOtpResponseModelImplToJson(
        _$ValidateOtpResponseModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'deviceId': instance.deviceId,
      'userId': instance.userId,
    };
