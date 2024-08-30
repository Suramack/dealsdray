import 'dart:convert';

import 'package:dealsdray/core/model/base_dynamic_response/base_dynamic_response.dart';
import 'package:dealsdray/core/model/register/response_model/send_otp_response_model/send_otp_response_model.dart';
import 'package:dealsdray/core/network/end_point.dart';
import 'package:dealsdray/core/network/network.dart';
import 'package:dealsdray/src/feature/register/service/register_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterRemoteRepo implements RegisterRepo {
  @override
  Future<BaseDynamicResponse> sendOtp({String? mobOrEmail, deviceId}) async {
    var response = await NetworkClient.post(
      endPoint: '${EndPoint.user}/${EndPoint.otp}',
      body: {
        "mobileNumber": mobOrEmail,
        "deviceId": deviceId,
      },
    );
    var result = response?.body;

    if (result != null) {
      // Convert result to a Map<String, dynamic>
      final jsonMap = jsonDecode(result);

      return BaseDynamicResponse<SendOtpResponseModel>.fromJson(
        jsonMap,
        (data) => SendOtpResponseModel.fromJson(data as Map<String, dynamic>),
      );
    } else {
      // Handle the case where response is null
      throw Exception('Response is null');
    }
  }

  @override
  Future<BaseDynamicResponse> validateOtp(
      {String? otp, String? userId, String? deviceId}) async {
    var response = await NetworkClient.post(
      endPoint: '${EndPoint.user}/${EndPoint.otp}/${EndPoint.verification}',
      body: {
        "otp": otp,
        "deviceId": deviceId,
        "userId": userId,
      },
    );
    var result = response?.body;

    if (result != null) {
      // Convert result to a Map<String, dynamic>
      final jsonMap = jsonDecode(result);

      return BaseDynamicResponse<SendOtpResponseModel>.fromJson(
        jsonMap,
        (data) => SendOtpResponseModel.fromJson(data as Map<String, dynamic>),
      );
    } else {
      // Handle the case where response is null
      throw Exception('Response is null');
    }
  }
}

final registerRemoteRepoProvider =
    Provider<RegisterRemoteRepo>((ref) => RegisterRemoteRepo());
