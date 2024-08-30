import 'package:freezed_annotation/freezed_annotation.dart';
part 'send_otp_response_model.freezed.dart';
part 'send_otp_response_model.g.dart';

@freezed
class SendOtpResponseModel with _$SendOtpResponseModel {
  const factory SendOtpResponseModel({
    String? message,
    String? deviceId,
    String? userId,
  }) = _SendOtpResponseModel;

  factory SendOtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SendOtpResponseModelFromJson(json);
}
