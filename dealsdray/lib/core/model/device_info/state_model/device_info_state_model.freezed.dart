// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_info_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeviceInfoState {
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceInfoStateCopyWith<DeviceInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoStateCopyWith<$Res> {
  factory $DeviceInfoStateCopyWith(
          DeviceInfoState value, $Res Function(DeviceInfoState) then) =
      _$DeviceInfoStateCopyWithImpl<$Res, DeviceInfoState>;
  @useResult
  $Res call({double? lat, double? lon, String? deviceId});
}

/// @nodoc
class _$DeviceInfoStateCopyWithImpl<$Res, $Val extends DeviceInfoState>
    implements $DeviceInfoStateCopyWith<$Res> {
  _$DeviceInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(_value.copyWith(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceInfoStateImplCopyWith<$Res>
    implements $DeviceInfoStateCopyWith<$Res> {
  factory _$$DeviceInfoStateImplCopyWith(_$DeviceInfoStateImpl value,
          $Res Function(_$DeviceInfoStateImpl) then) =
      __$$DeviceInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? lat, double? lon, String? deviceId});
}

/// @nodoc
class __$$DeviceInfoStateImplCopyWithImpl<$Res>
    extends _$DeviceInfoStateCopyWithImpl<$Res, _$DeviceInfoStateImpl>
    implements _$$DeviceInfoStateImplCopyWith<$Res> {
  __$$DeviceInfoStateImplCopyWithImpl(
      _$DeviceInfoStateImpl _value, $Res Function(_$DeviceInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(_$DeviceInfoStateImpl(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeviceInfoStateImpl implements _DeviceInfoState {
  const _$DeviceInfoStateImpl(
      {this.lat = null, this.lon = null, this.deviceId = null});

  @override
  @JsonKey()
  final double? lat;
  @override
  @JsonKey()
  final double? lon;
  @override
  @JsonKey()
  final String? deviceId;

  @override
  String toString() {
    return 'DeviceInfoState(lat: $lat, lon: $lon, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoStateImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lon, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoStateImplCopyWith<_$DeviceInfoStateImpl> get copyWith =>
      __$$DeviceInfoStateImplCopyWithImpl<_$DeviceInfoStateImpl>(
          this, _$identity);
}

abstract class _DeviceInfoState implements DeviceInfoState {
  const factory _DeviceInfoState(
      {final double? lat,
      final double? lon,
      final String? deviceId}) = _$DeviceInfoStateImpl;

  @override
  double? get lat;
  @override
  double? get lon;
  @override
  String? get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$DeviceInfoStateImplCopyWith<_$DeviceInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
