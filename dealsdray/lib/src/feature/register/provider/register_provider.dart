// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:dealsdray/core/model/register/response_model/send_otp_response_model/send_otp_response_model.dart';
import 'package:dealsdray/core/model/register/state_model/register_state_model/register_state_model.dart';
import 'package:dealsdray/design_system/dialog/brand_dialog.dart';
import 'package:dealsdray/design_system/label/label.dart';
import 'package:dealsdray/src/feature/register/service/register_remote_repo.dart';
import 'package:dealsdray/src/feature/splash/device_info_provider.dart';
import 'package:dealsdray/util/enum/network_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registerProvider =
    StateNotifierProvider<RegisterNotofierProvider, RegisterState>(
  (ref) => RegisterNotofierProvider(ref),
);

class RegisterNotofierProvider extends StateNotifier<RegisterState> {
  RegisterNotofierProvider(this.ref) : super(const RegisterState());

  final Ref ref;

  int get activeTabIndex => state.activeTabIndex;

  String? get userId => state.userId;

  bool get canSendOtp => state.canSendOtp;

  double get sendOtpOpacity => canSendOtp ? 1.0 : 0.6;

  bool get canResendOtp => state.canOtpResend;

  bool get isPhoneOrEmailLoading => state.isPhoneOrEmailLoading;

  String? get phoneNumber => state.phoneNumber;

  int get timer => state.timer;

  bool get isVarifyOtpLoading => state.isVarifyOtpLoading;

  // ignore: unused_field
  Timer? _timer;

  Future<bool> sendOtp({required BuildContext context, String? phone}) async {
    state = state.copyWith(
      isLoading: true,
      isPhoneOrEmailLoading: true,
    );
    updatePhoneNumber(phone ?? phoneNumber);
    var response = await ref.read(registerRemoteRepoProvider).sendOtp(
          deviceId: ref.read(deviceInfoProvider.notifier).deviceId,
          mobOrEmail: phoneNumber ?? "",
        );

    if (response.status == ActionStatus.success.code) {
      state = state.copyWith(
        isLoading: false,
        isPhoneOrEmailLoading: false,
      );

      updateUserId(userId: (response.data as SendOtpResponseModel).userId);

      return true;
    } else {
      BrandDialog.showDialogs(
        context: context,
        message: (response.data as SendOtpResponseModel).message ??
            Strings.somethingWentWrong,
      );
    }
    return false;
  }

  Future<void> varifyOtp({required BuildContext context, String? otp}) async {
    state = state.copyWith(
      isError: false,
      isLoading: true,
      isVarifyOtpLoading: true,
    );

    var response = await ref.read(registerRemoteRepoProvider).validateOtp(
          deviceId: ref.read(deviceInfoProvider.notifier).deviceId,
          otp: otp,
          userId: userId,
        );
    if (response.status == ActionStatus.success.code) {
      state = state.copyWith(
        isLoading: false,
        isError: false,
        isVarifyOtpLoading: false,
      );
    } else {
      BrandDialog.showDialogs(
        context: context,
        message: (response.data as SendOtpResponseModel).message ??
            Strings.somethingWentWrong,
      );
      state = state.copyWith(
        isLoading: false,
        isError: true,
        isVarifyOtpLoading: false,
      );
    }
  }

  void startTimer() {
    state = state.copyWith(canOtpResend: false);
    const oneMin = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneMin,
      (Timer timer) {
        if (this.timer == 0) {
          timer.cancel();
          state = state.copyWith(canOtpResend: true);
        } else {
          var k = this.timer - 1;
          updateTimer(k);
        }
      },
    );
  }

  void updateUserId({String? userId}) {
    state = state.copyWith(userId: userId);
  }

  void updateCanResentOtp(bool canResend) {
    state = state.copyWith(canOtpResend: canResend);
  }

  void updateCanSendOtp(bool canSendOtp) {
    state = state.copyWith(canSendOtp: canSendOtp);
  }

  void updateActiveIndex(int? index) {
    state = state.copyWith(activeTabIndex: index ?? 0);
  }

  void updatePhoneNumber(String? phone) {
    state = state.copyWith(phoneNumber: phone);
  }

  void updateTimer(int value) {
    state = state.copyWith(timer: value);
  }

  void updateIsVarifyOtpLoading(bool isLoading) {
    state = state.copyWith(isVarifyOtpLoading: isVarifyOtpLoading);
  }
}
