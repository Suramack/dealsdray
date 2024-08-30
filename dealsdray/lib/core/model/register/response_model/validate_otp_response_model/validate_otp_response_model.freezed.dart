// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_otp_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidateOtpResponseModel _$ValidateOtpResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ValidateOtpResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ValidateOtpResponseModel {
  String? get message => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidateOtpResponseModelCopyWith<ValidateOtpResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateOtpResponseModelCopyWith<$Res> {
  factory $ValidateOtpResponseModelCopyWith(ValidateOtpResponseModel value,
          $Res Function(ValidateOtpResponseModel) then) =
      _$ValidateOtpResponseModelCopyWithImpl<$Res, ValidateOtpResponseModel>;
  @useResult
  $Res call({String? message, String? deviceId, String? userId});
}

/// @nodoc
class _$ValidateOtpResponseModelCopyWithImpl<$Res,
        $Val extends ValidateOtpResponseModel>
    implements $ValidateOtpResponseModelCopyWith<$Res> {
  _$ValidateOtpResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? deviceId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidateOtpResponseModelImplCopyWith<$Res>
    implements $ValidateOtpResponseModelCopyWith<$Res> {
  factory _$$ValidateOtpResponseModelImplCopyWith(
          _$ValidateOtpResponseModelImpl value,
          $Res Function(_$ValidateOtpResponseModelImpl) then) =
      __$$ValidateOtpResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? deviceId, String? userId});
}

/// @nodoc
class __$$ValidateOtpResponseModelImplCopyWithImpl<$Res>
    extends _$ValidateOtpResponseModelCopyWithImpl<$Res,
        _$ValidateOtpResponseModelImpl>
    implements _$$ValidateOtpResponseModelImplCopyWith<$Res> {
  __$$ValidateOtpResponseModelImplCopyWithImpl(
      _$ValidateOtpResponseModelImpl _value,
      $Res Function(_$ValidateOtpResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? deviceId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$ValidateOtpResponseModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateOtpResponseModelImpl implements _ValidateOtpResponseModel {
  const _$ValidateOtpResponseModelImpl(
      {this.message, this.deviceId, this.userId});

  factory _$ValidateOtpResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateOtpResponseModelImplFromJson(json);

  @override
  final String? message;
  @override
  final String? deviceId;
  @override
  final String? userId;

  @override
  String toString() {
    return 'ValidateOtpResponseModel(message: $message, deviceId: $deviceId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateOtpResponseModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, deviceId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateOtpResponseModelImplCopyWith<_$ValidateOtpResponseModelImpl>
      get copyWith => __$$ValidateOtpResponseModelImplCopyWithImpl<
          _$ValidateOtpResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateOtpResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ValidateOtpResponseModel implements ValidateOtpResponseModel {
  const factory _ValidateOtpResponseModel(
      {final String? message,
      final String? deviceId,
      final String? userId}) = _$ValidateOtpResponseModelImpl;

  factory _ValidateOtpResponseModel.fromJson(Map<String, dynamic> json) =
      _$ValidateOtpResponseModelImpl.fromJson;

  @override
  String? get message;
  @override
  String? get deviceId;
  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$ValidateOtpResponseModelImplCopyWith<_$ValidateOtpResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
