// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fake_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FakeEcgData _$$_FakeEcgDataFromJson(Map<String, dynamic> json) =>
    _$_FakeEcgData(
      millisecondsSinceStart: json['millisecondsSinceStart'] as int,
      leadI: (json['leadI'] as num).toDouble(),
      leadII: (json['leadII'] as num).toDouble(),
    );

Map<String, dynamic> _$$_FakeEcgDataToJson(_$_FakeEcgData instance) =>
    <String, dynamic>{
      'millisecondsSinceStart': instance.millisecondsSinceStart,
      'leadI': instance.leadI,
      'leadII': instance.leadII,
    };
