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

_Point _$_PointFromJson(Map<String, dynamic> json) {
  return __Point.fromJson(json);
}

/// @nodoc
mixin _$_Point {
  int get millisecondsSinceStart => throw _privateConstructorUsedError;
  double get leadI => throw _privateConstructorUsedError;
  double get leadII => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PointCopyWith<_Point> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PointCopyWith<$Res> {
  factory _$PointCopyWith(_Point value, $Res Function(_Point) then) =
      __$PointCopyWithImpl<$Res, _Point>;
  @useResult
  $Res call({int millisecondsSinceStart, double leadI, double leadII});
}

/// @nodoc
class __$PointCopyWithImpl<$Res, $Val extends _Point>
    implements _$PointCopyWith<$Res> {
  __$PointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? millisecondsSinceStart = null,
    Object? leadI = null,
    Object? leadII = null,
  }) {
    return _then(_value.copyWith(
      millisecondsSinceStart: null == millisecondsSinceStart
          ? _value.millisecondsSinceStart
          : millisecondsSinceStart // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$__PointCopyWith<$Res> implements _$PointCopyWith<$Res> {
  factory _$$__PointCopyWith(_$__Point value, $Res Function(_$__Point) then) =
      __$$__PointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int millisecondsSinceStart, double leadI, double leadII});
}

/// @nodoc
class __$$__PointCopyWithImpl<$Res>
    extends __$PointCopyWithImpl<$Res, _$__Point>
    implements _$$__PointCopyWith<$Res> {
  __$$__PointCopyWithImpl(_$__Point _value, $Res Function(_$__Point) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? millisecondsSinceStart = null,
    Object? leadI = null,
    Object? leadII = null,
  }) {
    return _then(_$__Point(
      millisecondsSinceStart: null == millisecondsSinceStart
          ? _value.millisecondsSinceStart
          : millisecondsSinceStart // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$__Point implements __Point {
  _$__Point(
      {required this.millisecondsSinceStart,
      required this.leadI,
      required this.leadII});

  factory _$__Point.fromJson(Map<String, dynamic> json) =>
      _$$__PointFromJson(json);

  @override
  final int millisecondsSinceStart;
  @override
  final double leadI;
  @override
  final double leadII;

  @override
  String toString() {
    return '_Point(millisecondsSinceStart: $millisecondsSinceStart, leadI: $leadI, leadII: $leadII)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__Point &&
            (identical(other.millisecondsSinceStart, millisecondsSinceStart) ||
                other.millisecondsSinceStart == millisecondsSinceStart) &&
            (identical(other.leadI, leadI) || other.leadI == leadI) &&
            (identical(other.leadII, leadII) || other.leadII == leadII));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, millisecondsSinceStart, leadI, leadII);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__PointCopyWith<_$__Point> get copyWith =>
      __$$__PointCopyWithImpl<_$__Point>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__PointToJson(
      this,
    );
  }
}

abstract class __Point implements _Point {
  factory __Point(
      {required final int millisecondsSinceStart,
      required final double leadI,
      required final double leadII}) = _$__Point;

  factory __Point.fromJson(Map<String, dynamic> json) = _$__Point.fromJson;

  @override
  int get millisecondsSinceStart;
  @override
  double get leadI;
  @override
  double get leadII;
  @override
  @JsonKey(ignore: true)
  _$$__PointCopyWith<_$__Point> get copyWith =>
      throw _privateConstructorUsedError;
}
