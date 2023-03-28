// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fake_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FakeEcgData _$FakeEcgDataFromJson(Map<String, dynamic> json) {
  return _FakeEcgData.fromJson(json);
}

/// @nodoc
mixin _$FakeEcgData {
// ignore: invalid_annotation_target
  @JsonKey(name: "millisecondsSinceStart")
  @_MillisecondsDurationConverter()
  Duration get sinceStart => throw _privateConstructorUsedError;
  double get leadI => throw _privateConstructorUsedError;
  double get leadII => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FakeEcgDataCopyWith<FakeEcgData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FakeEcgDataCopyWith<$Res> {
  factory $FakeEcgDataCopyWith(
          FakeEcgData value, $Res Function(FakeEcgData) then) =
      _$FakeEcgDataCopyWithImpl<$Res, FakeEcgData>;
  @useResult
  $Res call(
      {@JsonKey(name: "millisecondsSinceStart")
      @_MillisecondsDurationConverter()
          Duration sinceStart,
      double leadI,
      double leadII});
}

/// @nodoc
class _$FakeEcgDataCopyWithImpl<$Res, $Val extends FakeEcgData>
    implements $FakeEcgDataCopyWith<$Res> {
  _$FakeEcgDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sinceStart = null,
    Object? leadI = null,
    Object? leadII = null,
  }) {
    return _then(_value.copyWith(
      sinceStart: null == sinceStart
          ? _value.sinceStart
          : sinceStart // ignore: cast_nullable_to_non_nullable
              as Duration,
      leadI: null == leadI
          ? _value.leadI
          : leadI // ignore: cast_nullable_to_non_nullable
              as double,
      leadII: null == leadII
          ? _value.leadII
          : leadII // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FakeEcgDataCopyWith<$Res>
    implements $FakeEcgDataCopyWith<$Res> {
  factory _$$_FakeEcgDataCopyWith(
          _$_FakeEcgData value, $Res Function(_$_FakeEcgData) then) =
      __$$_FakeEcgDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "millisecondsSinceStart")
      @_MillisecondsDurationConverter()
          Duration sinceStart,
      double leadI,
      double leadII});
}

/// @nodoc
class __$$_FakeEcgDataCopyWithImpl<$Res>
    extends _$FakeEcgDataCopyWithImpl<$Res, _$_FakeEcgData>
    implements _$$_FakeEcgDataCopyWith<$Res> {
  __$$_FakeEcgDataCopyWithImpl(
      _$_FakeEcgData _value, $Res Function(_$_FakeEcgData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sinceStart = null,
    Object? leadI = null,
    Object? leadII = null,
  }) {
    return _then(_$_FakeEcgData(
      sinceStart: null == sinceStart
          ? _value.sinceStart
          : sinceStart // ignore: cast_nullable_to_non_nullable
              as Duration,
      leadI: null == leadI
          ? _value.leadI
          : leadI // ignore: cast_nullable_to_non_nullable
              as double,
      leadII: null == leadII
          ? _value.leadII
          : leadII // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FakeEcgData implements _FakeEcgData {
  _$_FakeEcgData(
      {@JsonKey(name: "millisecondsSinceStart")
      @_MillisecondsDurationConverter()
          required this.sinceStart,
      required this.leadI,
      required this.leadII});

  factory _$_FakeEcgData.fromJson(Map<String, dynamic> json) =>
      _$$_FakeEcgDataFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "millisecondsSinceStart")
  @_MillisecondsDurationConverter()
  final Duration sinceStart;
  @override
  final double leadI;
  @override
  final double leadII;

  @override
  String toString() {
    return 'FakeEcgData(sinceStart: $sinceStart, leadI: $leadI, leadII: $leadII)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FakeEcgData &&
            (identical(other.sinceStart, sinceStart) ||
                other.sinceStart == sinceStart) &&
            (identical(other.leadI, leadI) || other.leadI == leadI) &&
            (identical(other.leadII, leadII) || other.leadII == leadII));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sinceStart, leadI, leadII);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FakeEcgDataCopyWith<_$_FakeEcgData> get copyWith =>
      __$$_FakeEcgDataCopyWithImpl<_$_FakeEcgData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FakeEcgDataToJson(
      this,
    );
  }
}

abstract class _FakeEcgData implements FakeEcgData {
  factory _FakeEcgData(
      {@JsonKey(name: "millisecondsSinceStart")
      @_MillisecondsDurationConverter()
          required final Duration sinceStart,
      required final double leadI,
      required final double leadII}) = _$_FakeEcgData;

  factory _FakeEcgData.fromJson(Map<String, dynamic> json) =
      _$_FakeEcgData.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "millisecondsSinceStart")
  @_MillisecondsDurationConverter()
  Duration get sinceStart;
  @override
  double get leadI;
  @override
  double get leadII;
  @override
  @JsonKey(ignore: true)
  _$$_FakeEcgDataCopyWith<_$_FakeEcgData> get copyWith =>
      throw _privateConstructorUsedError;
}
