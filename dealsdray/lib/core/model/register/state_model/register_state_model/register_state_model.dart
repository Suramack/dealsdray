import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_state_model.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(false) bool isLoading,
    @Default(false) bool isPhoneOrEmailLoading,
    @Default(false) bool canOtpResend,
    @Default(false) bool isVarifyOtpLoading,
    @Default(false) bool isError,
    @Default(false) bool canSendOtp,
    @Default(null) String? phoneNumber,
    @Default(null) String? userId,
    @Default(0) int activeTabIndex,
    @Default(59) int timer,
  }) = _RegisterState;
}
