import 'package:dealsdray/core/model/base_dynamic_response/base_dynamic_response.dart';

abstract class RegisterRepo {
  Future<BaseDynamicResponse> sendOtp({String? mobOrEmail, deviceId});

  Future<BaseDynamicResponse> validateOtp(
      {String? otp, String? userId, String? deviceId});
}
