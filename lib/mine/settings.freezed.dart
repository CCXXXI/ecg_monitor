// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingList {
  double get portraitDuration => throw _privateConstructorUsedError;

  double get landscapeDuration => throw _privateConstructorUsedError;

  bool get fakeDevice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingListCopyWith<SettingList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingListCopyWith<$Res> {
  factory $SettingListCopyWith(
          SettingList value, $Res Function(SettingList) then) =
      _$SettingListCopyWithImpl<$Res, SettingList>;

  @useResult
  $Res call(
      {double portraitDuration, double landscapeDuration, bool fakeDevice});
}

/// @nodoc
class _$SettingListCopyWithImpl<$Res, $Val extends SettingList>
    implements $SettingListCopyWith<$Res> {
  _$SettingListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portraitDuration = null,
    Object? landscapeDuration = null,
    Object? fakeDevice = null,
  }) {
    return _then(_value.copyWith(
      portraitDuration: null == portraitDuration
          ? _value.portraitDuration
          : portraitDuration // ignore: cast_nullable_to_non_nullable
              as double,
      landscapeDuration: null == landscapeDuration
          ? _value.landscapeDuration
          : landscapeDuration // ignore: cast_nullable_to_non_nullable
              as double,
      fakeDevice: null == fakeDevice
          ? _value.fakeDevice
          : fakeDevice // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingListCopyWith<$Res>
    implements $SettingListCopyWith<$Res> {
  factory _$$_SettingListCopyWith(
          _$_SettingList value, $Res Function(_$_SettingList) then) =
      __$$_SettingListCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {double portraitDuration, double landscapeDuration, bool fakeDevice});
}

/// @nodoc
class __$$_SettingListCopyWithImpl<$Res>
    extends _$SettingListCopyWithImpl<$Res, _$_SettingList>
    implements _$$_SettingListCopyWith<$Res> {
  __$$_SettingListCopyWithImpl(
      _$_SettingList _value, $Res Function(_$_SettingList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portraitDuration = null,
    Object? landscapeDuration = null,
    Object? fakeDevice = null,
  }) {
    return _then(_$_SettingList(
      portraitDuration: null == portraitDuration
          ? _value.portraitDuration
          : portraitDuration // ignore: cast_nullable_to_non_nullable
              as double,
      landscapeDuration: null == landscapeDuration
          ? _value.landscapeDuration
          : landscapeDuration // ignore: cast_nullable_to_non_nullable
              as double,
      fakeDevice: null == fakeDevice
          ? _value.fakeDevice
          : fakeDevice // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SettingList implements _SettingList {
  const _$_SettingList(
      {required this.portraitDuration,
      required this.landscapeDuration,
      required this.fakeDevice});

  @override
  final double portraitDuration;
  @override
  final double landscapeDuration;
  @override
  final bool fakeDevice;

  @override
  String toString() {
    return 'SettingList(portraitDuration: $portraitDuration, landscapeDuration: $landscapeDuration, fakeDevice: $fakeDevice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingList &&
            (identical(other.portraitDuration, portraitDuration) ||
                other.portraitDuration == portraitDuration) &&
            (identical(other.landscapeDuration, landscapeDuration) ||
                other.landscapeDuration == landscapeDuration) &&
            (identical(other.fakeDevice, fakeDevice) ||
                other.fakeDevice == fakeDevice));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, portraitDuration, landscapeDuration, fakeDevice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingListCopyWith<_$_SettingList> get copyWith =>
      __$$_SettingListCopyWithImpl<_$_SettingList>(this, _$identity);
}

abstract class _SettingList implements SettingList {
  const factory _SettingList(
      {required final double portraitDuration,
      required final double landscapeDuration,
      required final bool fakeDevice}) = _$_SettingList;

  @override
  double get portraitDuration;

  @override
  double get landscapeDuration;

  @override
  bool get fakeDevice;

  @override
  @JsonKey(ignore: true)
  _$$_SettingListCopyWith<_$_SettingList> get copyWith =>
      throw _privateConstructorUsedError;
}
