// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EcgData {
  double get time => throw _privateConstructorUsedError;
  double get leadI => throw _privateConstructorUsedError;
  double get leadII => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EcgDataCopyWith<EcgData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EcgDataCopyWith<$Res> {
  factory $EcgDataCopyWith(EcgData value, $Res Function(EcgData) then) =
      _$EcgDataCopyWithImpl<$Res, EcgData>;
  @useResult
  $Res call({double time, double leadI, double leadII});
}

/// @nodoc
class _$EcgDataCopyWithImpl<$Res, $Val extends EcgData>
    implements $EcgDataCopyWith<$Res> {
  _$EcgDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? leadI = null,
    Object? leadII = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$$_EcgDataCopyWith<$Res> implements $EcgDataCopyWith<$Res> {
  factory _$$_EcgDataCopyWith(
          _$_EcgData value, $Res Function(_$_EcgData) then) =
      __$$_EcgDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double time, double leadI, double leadII});
}

/// @nodoc
class __$$_EcgDataCopyWithImpl<$Res>
    extends _$EcgDataCopyWithImpl<$Res, _$_EcgData>
    implements _$$_EcgDataCopyWith<$Res> {
  __$$_EcgDataCopyWithImpl(_$_EcgData _value, $Res Function(_$_EcgData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? leadI = null,
    Object? leadII = null,
  }) {
    return _then(_$_EcgData(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
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

class _$_EcgData extends _EcgData {
  const _$_EcgData(
      {required this.time, required this.leadI, required this.leadII})
      : super._();

  @override
  final double time;
  @override
  final double leadI;
  @override
  final double leadII;

  @override
  String toString() {
    return 'EcgData(time: $time, leadI: $leadI, leadII: $leadII)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EcgData &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.leadI, leadI) || other.leadI == leadI) &&
            (identical(other.leadII, leadII) || other.leadII == leadII));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, leadI, leadII);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EcgDataCopyWith<_$_EcgData> get copyWith =>
      __$$_EcgDataCopyWithImpl<_$_EcgData>(this, _$identity);
}

abstract class _EcgData extends EcgData {
  const factory _EcgData(
      {required final double time,
      required final double leadI,
      required final double leadII}) = _$_EcgData;
  const _EcgData._() : super._();

  @override
  double get time;
  @override
  double get leadI;
  @override
  double get leadII;
  @override
  @JsonKey(ignore: true)
  _$$_EcgDataCopyWith<_$_EcgData> get copyWith =>
      throw _privateConstructorUsedError;
}
