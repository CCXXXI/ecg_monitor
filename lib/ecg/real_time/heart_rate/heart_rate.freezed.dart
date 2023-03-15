// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heart_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$_HeartRateData {
  /// If available, the heart rate in beats per minute.
  int get rate => throw _privateConstructorUsedError;

  /// If unavailable, the progress of the calculation. (0.0 - 1.0)
  double get progress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$HeartRateDataCopyWith<_HeartRateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HeartRateDataCopyWith<$Res> {
  factory _$HeartRateDataCopyWith(
          _HeartRateData value, $Res Function(_HeartRateData) then) =
      __$HeartRateDataCopyWithImpl<$Res, _HeartRateData>;
  @useResult
  $Res call({int rate, double progress});
}

/// @nodoc
class __$HeartRateDataCopyWithImpl<$Res, $Val extends _HeartRateData>
    implements _$HeartRateDataCopyWith<$Res> {
  __$HeartRateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? progress = null,
  }) {
    return _then(_value.copyWith(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__HeartRateDataCopyWith<$Res>
    implements _$HeartRateDataCopyWith<$Res> {
  factory _$$__HeartRateDataCopyWith(
          _$__HeartRateData value, $Res Function(_$__HeartRateData) then) =
      __$$__HeartRateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rate, double progress});
}

/// @nodoc
class __$$__HeartRateDataCopyWithImpl<$Res>
    extends __$HeartRateDataCopyWithImpl<$Res, _$__HeartRateData>
    implements _$$__HeartRateDataCopyWith<$Res> {
  __$$__HeartRateDataCopyWithImpl(
      _$__HeartRateData _value, $Res Function(_$__HeartRateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? progress = null,
  }) {
    return _then(_$__HeartRateData(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$__HeartRateData extends __HeartRateData {
  const _$__HeartRateData({this.rate = 0, this.progress = 0}) : super._();

  /// If available, the heart rate in beats per minute.
  @override
  @JsonKey()
  final int rate;

  /// If unavailable, the progress of the calculation. (0.0 - 1.0)
  @override
  @JsonKey()
  final double progress;

  @override
  String toString() {
    return '_HeartRateData(rate: $rate, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__HeartRateData &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rate, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__HeartRateDataCopyWith<_$__HeartRateData> get copyWith =>
      __$$__HeartRateDataCopyWithImpl<_$__HeartRateData>(this, _$identity);
}

abstract class __HeartRateData extends _HeartRateData {
  const factory __HeartRateData({final int rate, final double progress}) =
      _$__HeartRateData;
  const __HeartRateData._() : super._();

  @override

  /// If available, the heart rate in beats per minute.
  int get rate;
  @override

  /// If unavailable, the progress of the calculation. (0.0 - 1.0)
  double get progress;
  @override
  @JsonKey(ignore: true)
  _$$__HeartRateDataCopyWith<_$__HeartRateData> get copyWith =>
      throw _privateConstructorUsedError;
}
