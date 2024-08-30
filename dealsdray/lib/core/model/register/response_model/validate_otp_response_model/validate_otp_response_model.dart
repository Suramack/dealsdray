import 'package:freezed_annotation/freezed_annotation.dart';
part 'validate_otp_response_model.freezed.dart';
part 'validate_otp_response_model.g.dart';

@freezed
class ValidateOtpResponseModel with _$ValidateOtpResponseModel {
  const factory ValidateOtpResponseModel({
    String? message,
    String? deviceId,
    String? userId,
  }) = _ValidateOtpResponseModel;

  factory ValidateOtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ValidateOtpResponseModelFromJson(json);
}
