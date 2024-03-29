// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChartSettingsData {
  Duration get portraitDuration => throw _privateConstructorUsedError;
  Duration get landscapeDuration => throw _privateConstructorUsedError;
  Color get gridColor => throw _privateConstructorUsedError;
  LineType get horizontalLineType => throw _privateConstructorUsedError;
  LineType get verticalLineType => throw _privateConstructorUsedError;
  bool get showDots => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChartSettingsDataCopyWith<ChartSettingsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartSettingsDataCopyWith<$Res> {
  factory $ChartSettingsDataCopyWith(
          ChartSettingsData value, $Res Function(ChartSettingsData) then) =
      _$ChartSettingsDataCopyWithImpl<$Res, ChartSettingsData>;
  @useResult
  $Res call(
      {Duration portraitDuration,
      Duration landscapeDuration,
      Color gridColor,
      LineType horizontalLineType,
      LineType verticalLineType,
      bool showDots});
}

/// @nodoc
class _$ChartSettingsDataCopyWithImpl<$Res, $Val extends ChartSettingsData>
    implements $ChartSettingsDataCopyWith<$Res> {
  _$ChartSettingsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portraitDuration = null,
    Object? landscapeDuration = null,
    Object? gridColor = null,
    Object? horizontalLineType = null,
    Object? verticalLineType = null,
    Object? showDots = null,
  }) {
    return _then(_value.copyWith(
      portraitDuration: null == portraitDuration
          ? _value.portraitDuration
          : portraitDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      landscapeDuration: null == landscapeDuration
          ? _value.landscapeDuration
          : landscapeDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      gridColor: null == gridColor
          ? _value.gridColor
          : gridColor // ignore: cast_nullable_to_non_nullable
              as Color,
      horizontalLineType: null == horizontalLineType
          ? _value.horizontalLineType
          : horizontalLineType // ignore: cast_nullable_to_non_nullable
              as LineType,
      verticalLineType: null == verticalLineType
          ? _value.verticalLineType
          : verticalLineType // ignore: cast_nullable_to_non_nullable
              as LineType,
      showDots: null == showDots
          ? _value.showDots
          : showDots // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChartSettingsDataCopyWith<$Res>
    implements $ChartSettingsDataCopyWith<$Res> {
  factory _$$_ChartSettingsDataCopyWith(_$_ChartSettingsData value,
          $Res Function(_$_ChartSettingsData) then) =
      __$$_ChartSettingsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Duration portraitDuration,
      Duration landscapeDuration,
      Color gridColor,
      LineType horizontalLineType,
      LineType verticalLineType,
      bool showDots});
}

/// @nodoc
class __$$_ChartSettingsDataCopyWithImpl<$Res>
    extends _$ChartSettingsDataCopyWithImpl<$Res, _$_ChartSettingsData>
    implements _$$_ChartSettingsDataCopyWith<$Res> {
  __$$_ChartSettingsDataCopyWithImpl(
      _$_ChartSettingsData _value, $Res Function(_$_ChartSettingsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portraitDuration = null,
    Object? landscapeDuration = null,
    Object? gridColor = null,
    Object? horizontalLineType = null,
    Object? verticalLineType = null,
    Object? showDots = null,
  }) {
    return _then(_$_ChartSettingsData(
      portraitDuration: null == portraitDuration
          ? _value.portraitDuration
          : portraitDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      landscapeDuration: null == landscapeDuration
          ? _value.landscapeDuration
          : landscapeDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      gridColor: null == gridColor
          ? _value.gridColor
          : gridColor // ignore: cast_nullable_to_non_nullable
              as Color,
      horizontalLineType: null == horizontalLineType
          ? _value.horizontalLineType
          : horizontalLineType // ignore: cast_nullable_to_non_nullable
              as LineType,
      verticalLineType: null == verticalLineType
          ? _value.verticalLineType
          : verticalLineType // ignore: cast_nullable_to_non_nullable
              as LineType,
      showDots: null == showDots
          ? _value.showDots
          : showDots // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChartSettingsData implements _ChartSettingsData {
  const _$_ChartSettingsData(
      {required this.portraitDuration,
      required this.landscapeDuration,
      required this.gridColor,
      required this.horizontalLineType,
      required this.verticalLineType,
      required this.showDots});

  @override
  final Duration portraitDuration;
  @override
  final Duration landscapeDuration;
  @override
  final Color gridColor;
  @override
  final LineType horizontalLineType;
  @override
  final LineType verticalLineType;
  @override
  final bool showDots;

  @override
  String toString() {
    return 'ChartSettingsData(portraitDuration: $portraitDuration, landscapeDuration: $landscapeDuration, gridColor: $gridColor, horizontalLineType: $horizontalLineType, verticalLineType: $verticalLineType, showDots: $showDots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChartSettingsData &&
            (identical(other.portraitDuration, portraitDuration) ||
                other.portraitDuration == portraitDuration) &&
            (identical(other.landscapeDuration, landscapeDuration) ||
                other.landscapeDuration == landscapeDuration) &&
            (identical(other.gridColor, gridColor) ||
                other.gridColor == gridColor) &&
            (identical(other.horizontalLineType, horizontalLineType) ||
                other.horizontalLineType == horizontalLineType) &&
            (identical(other.verticalLineType, verticalLineType) ||
                other.verticalLineType == verticalLineType) &&
            (identical(other.showDots, showDots) ||
                other.showDots == showDots));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      portraitDuration,
      landscapeDuration,
      gridColor,
      horizontalLineType,
      verticalLineType,
      showDots);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChartSettingsDataCopyWith<_$_ChartSettingsData> get copyWith =>
      __$$_ChartSettingsDataCopyWithImpl<_$_ChartSettingsData>(
          this, _$identity);
}

abstract class _ChartSettingsData implements ChartSettingsData {
  const factory _ChartSettingsData(
      {required final Duration portraitDuration,
      required final Duration landscapeDuration,
      required final Color gridColor,
      required final LineType horizontalLineType,
      required final LineType verticalLineType,
      required final bool showDots}) = _$_ChartSettingsData;

  @override
  Duration get portraitDuration;
  @override
  Duration get landscapeDuration;
  @override
  Color get gridColor;
  @override
  LineType get horizontalLineType;
  @override
  LineType get verticalLineType;
  @override
  bool get showDots;
  @override
  @JsonKey(ignore: true)
  _$$_ChartSettingsDataCopyWith<_$_ChartSettingsData> get copyWith =>
      throw _privateConstructorUsedError;
}
