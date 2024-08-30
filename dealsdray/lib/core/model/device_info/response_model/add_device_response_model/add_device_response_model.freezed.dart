// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_device_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceResponseData _$DeviceResponseDataFromJson(Map<String, dynamic> json) {
  return _DeviceResponseData.fromJson(json);
}

/// @nodoc
mixin _$DeviceResponseData {
  String? get message => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceResponseDataCopyWith<DeviceResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceResponseDataCopyWith<$Res> {
  factory $DeviceResponseDataCopyWith(
          DeviceResponseData value, $Res Function(DeviceResponseData) then) =
      _$DeviceResponseDataCopyWithImpl<$Res, DeviceResponseData>;
  @useResult
  $Res call({String? message, String? deviceId});
}

/// @nodoc
class _$DeviceResponseDataCopyWithImpl<$Res, $Val extends DeviceResponseData>
    implements $DeviceResponseDataCopyWith<$Res> {
  _$DeviceResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? deviceId = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceResponseDataImplCopyWith<$Res>
    implements $DeviceResponseDataCopyWith<$Res> {
  factory _$$DeviceResponseDataImplCopyWith(_$DeviceResponseDataImpl value,
          $Res Function(_$DeviceResponseDataImpl) then) =
      __$$DeviceResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? deviceId});
}

/// @nodoc
class __$$DeviceResponseDataImplCopyWithImpl<$Res>
    extends _$DeviceResponseDataCopyWithImpl<$Res, _$DeviceResponseDataImpl>
    implements _$$DeviceResponseDataImplCopyWith<$Res> {
  __$$DeviceResponseDataImplCopyWithImpl(_$DeviceResponseDataImpl _value,
      $Res Function(_$DeviceResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(_$DeviceResponseDataImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceResponseDataImpl implements _DeviceResponseData {
  const _$DeviceResponseDataImpl({this.message, this.deviceId});

  factory _$DeviceResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceResponseDataImplFromJson(json);

  @override
  final String? message;
  @override
  final String? deviceId;

  @override
  String toString() {
    return 'DeviceResponseData(message: $message, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceResponseDataImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceResponseDataImplCopyWith<_$DeviceResponseDataImpl> get copyWith =>
      __$$DeviceResponseDataImplCopyWithImpl<_$DeviceResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceResponseDataImplToJson(
      this,
    );
  }
}

abstract class _DeviceResponseData implements DeviceResponseData {
  const factory _DeviceResponseData(
      {final String? message,
      final String? deviceId}) = _$DeviceResponseDataImpl;

  factory _DeviceResponseData.fromJson(Map<String, dynamic> json) =
      _$DeviceResponseDataImpl.fromJson;

  @override
  String? get message;
  @override
  String? get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$DeviceResponseDataImplCopyWith<_$DeviceResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
