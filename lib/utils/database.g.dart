// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBeatCollection on Isar {
  IsarCollection<Beat> get beats => this.collection();
}

const BeatSchema = CollectionSchema(
  name: r'Beat',
  id: -4573558557513909777,
  properties: {
    r'label': PropertySchema(
      id: 0,
      name: r'label',
      type: IsarType.byte,
      enumMap: _BeatlabelEnumValueMap,
    ),
    r'time': PropertySchema(
      id: 1,
      name: r'time',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _beatEstimateSize,
  serialize: _beatSerialize,
  deserialize: _beatDeserialize,
  deserializeProp: _beatDeserializeProp,
  idName: r'id',
  indexes: {
    r'time': IndexSchema(
      id: -2250472054110640942,
      name: r'time',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'time',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'label_time': IndexSchema(
      id: 3356589036610194125,
      name: r'label_time',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'label',
          type: IndexType.value,
          caseSensitive: false,
        ),
        IndexPropertySchema(
          name: r'time',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _beatGetId,
  getLinks: _beatGetLinks,
  attach: _beatAttach,
  version: '3.1.0+1',
);

int _beatEstimateSize(
  Beat object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _beatSerialize(
  Beat object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.label.index);
  writer.writeDateTime(offsets[1], object.time);
}

Beat _beatDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Beat(
    label: _BeatlabelValueEnumMap[reader.readByteOrNull(offsets[0])] ??
        Label.sinusRhythm,
    time: reader.readDateTime(offsets[1]),
  );
  return object;
}

P _beatDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_BeatlabelValueEnumMap[reader.readByteOrNull(offset)] ??
          Label.sinusRhythm) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _BeatlabelEnumValueMap = {
  'sinusRhythm': 0,
  'atrialPrematureBeat': 1,
  'atrialFlutter': 2,
  'atrialFibrillation': 3,
  'ventricularPrematureBeat': 4,
  'paroxysmalSupraVentricularTachycardia': 5,
  'ventricularPreExcitation': 6,
  'ventricularFlutterAndFibrillation': 7,
  'atrioventricularBlock': 8,
  'noise': 9,
  'unknown': 10,
};
const _BeatlabelValueEnumMap = {
  0: Label.sinusRhythm,
  1: Label.atrialPrematureBeat,
  2: Label.atrialFlutter,
  3: Label.atrialFibrillation,
  4: Label.ventricularPrematureBeat,
  5: Label.paroxysmalSupraVentricularTachycardia,
  6: Label.ventricularPreExcitation,
  7: Label.ventricularFlutterAndFibrillation,
  8: Label.atrioventricularBlock,
  9: Label.noise,
  10: Label.unknown,
};

Id _beatGetId(Beat object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _beatGetLinks(Beat object) {
  return [];
}

void _beatAttach(IsarCollection<dynamic> col, Id id, Beat object) {}

extension BeatQueryWhereSort on QueryBuilder<Beat, Beat, QWhere> {
  QueryBuilder<Beat, Beat, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhere> anyTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'time'),
      );
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhere> anyLabelTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'label_time'),
      );
    });
  }
}

extension BeatQueryWhere on QueryBuilder<Beat, Beat, QWhereClause> {
  QueryBuilder<Beat, Beat, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> timeEqualTo(DateTime time) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'time',
        value: [time],
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> timeNotEqualTo(DateTime time) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'time',
              lower: [],
              upper: [time],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'time',
              lower: [time],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'time',
              lower: [time],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'time',
              lower: [],
              upper: [time],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> timeGreaterThan(
    DateTime time, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'time',
        lower: [time],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> timeLessThan(
    DateTime time, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'time',
        lower: [],
        upper: [time],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> timeBetween(
    DateTime lowerTime,
    DateTime upperTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'time',
        lower: [lowerTime],
        includeLower: includeLower,
        upper: [upperTime],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> labelEqualToAnyTime(Label label) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'label_time',
        value: [label],
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> labelNotEqualToAnyTime(
      Label label) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'label_time',
              lower: [],
              upper: [label],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'label_time',
              lower: [label],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'label_time',
              lower: [label],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'label_time',
              lower: [],
              upper: [label],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> labelGreaterThanAnyTime(
    Label label, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'label_time',
        lower: [label],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> labelLessThanAnyTime(
    Label label, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'label_time',
        lower: [],
        upper: [label],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> labelBetweenAnyTime(
    Label lowerLabel,
    Label upperLabel, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'label_time',
        lower: [lowerLabel],
        includeLower: includeLower,
        upper: [upperLabel],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> labelTimeEqualTo(
      Label label, DateTime time) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'label_time',
        value: [label, time],
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> labelEqualToTimeNotEqualTo(
      Label label, DateTime time) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'label_time',
              lower: [label],
              upper: [label, time],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'label_time',
              lower: [label, time],
              includeLower: false,
              upper: [label],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'label_time',
              lower: [label, time],
              includeLower: false,
              upper: [label],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'label_time',
              lower: [label],
              upper: [label, time],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> labelEqualToTimeGreaterThan(
    Label label,
    DateTime time, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'label_time',
        lower: [label, time],
        includeLower: include,
        upper: [label],
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> labelEqualToTimeLessThan(
    Label label,
    DateTime time, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'label_time',
        lower: [label],
        upper: [label, time],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterWhereClause> labelEqualToTimeBetween(
    Label label,
    DateTime lowerTime,
    DateTime upperTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'label_time',
        lower: [label, lowerTime],
        includeLower: includeLower,
        upper: [label, upperTime],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BeatQueryFilter on QueryBuilder<Beat, Beat, QFilterCondition> {
  QueryBuilder<Beat, Beat, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterFilterCondition> labelEqualTo(Label value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'label',
        value: value,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterFilterCondition> labelGreaterThan(
    Label value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'label',
        value: value,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterFilterCondition> labelLessThan(
    Label value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'label',
        value: value,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterFilterCondition> labelBetween(
    Label lower,
    Label upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'label',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterFilterCondition> timeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterFilterCondition> timeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterFilterCondition> timeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<Beat, Beat, QAfterFilterCondition> timeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'time',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BeatQueryObject on QueryBuilder<Beat, Beat, QFilterCondition> {}

extension BeatQueryLinks on QueryBuilder<Beat, Beat, QFilterCondition> {}

extension BeatQuerySortBy on QueryBuilder<Beat, Beat, QSortBy> {
  QueryBuilder<Beat, Beat, QAfterSortBy> sortByLabel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'label', Sort.asc);
    });
  }

  QueryBuilder<Beat, Beat, QAfterSortBy> sortByLabelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'label', Sort.desc);
    });
  }

  QueryBuilder<Beat, Beat, QAfterSortBy> sortByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<Beat, Beat, QAfterSortBy> sortByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }
}

extension BeatQuerySortThenBy on QueryBuilder<Beat, Beat, QSortThenBy> {
  QueryBuilder<Beat, Beat, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Beat, Beat, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Beat, Beat, QAfterSortBy> thenByLabel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'label', Sort.asc);
    });
  }

  QueryBuilder<Beat, Beat, QAfterSortBy> thenByLabelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'label', Sort.desc);
    });
  }

  QueryBuilder<Beat, Beat, QAfterSortBy> thenByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<Beat, Beat, QAfterSortBy> thenByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }
}

extension BeatQueryWhereDistinct on QueryBuilder<Beat, Beat, QDistinct> {
  QueryBuilder<Beat, Beat, QDistinct> distinctByLabel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'label');
    });
  }

  QueryBuilder<Beat, Beat, QDistinct> distinctByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'time');
    });
  }
}

extension BeatQueryProperty on QueryBuilder<Beat, Beat, QQueryProperty> {
  QueryBuilder<Beat, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Beat, Label, QQueryOperations> labelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'label');
    });
  }

  QueryBuilder<Beat, DateTime, QQueryOperations> timeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'time');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSamplePointCollection on Isar {
  IsarCollection<SamplePoint> get samplePoints => this.collection();
}

const SamplePointSchema = CollectionSchema(
  name: r'SamplePoint',
  id: -3214495057508385358,
  properties: {
    r'leadI': PropertySchema(
      id: 0,
      name: r'leadI',
      type: IsarType.double,
    ),
    r'leadII': PropertySchema(
      id: 1,
      name: r'leadII',
      type: IsarType.double,
    )
  },
  estimateSize: _samplePointEstimateSize,
  serialize: _samplePointSerialize,
  deserialize: _samplePointDeserialize,
  deserializeProp: _samplePointDeserializeProp,
  idName: r'millisecondsSinceEpoch',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _samplePointGetId,
  getLinks: _samplePointGetLinks,
  attach: _samplePointAttach,
  version: '3.1.0+1',
);

int _samplePointEstimateSize(
  SamplePoint object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _samplePointSerialize(
  SamplePoint object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.leadI);
  writer.writeDouble(offsets[1], object.leadII);
}

SamplePoint _samplePointDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SamplePoint(
    leadI: reader.readDouble(offsets[0]),
    leadII: reader.readDouble(offsets[1]),
    millisecondsSinceEpoch: id,
  );
  return object;
}

P _samplePointDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _samplePointGetId(SamplePoint object) {
  return object.millisecondsSinceEpoch;
}

List<IsarLinkBase<dynamic>> _samplePointGetLinks(SamplePoint object) {
  return [];
}

void _samplePointAttach(
    IsarCollection<dynamic> col, Id id, SamplePoint object) {}

extension SamplePointQueryWhereSort
    on QueryBuilder<SamplePoint, SamplePoint, QWhere> {
  QueryBuilder<SamplePoint, SamplePoint, QAfterWhere>
      anyMillisecondsSinceEpoch() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SamplePointQueryWhere
    on QueryBuilder<SamplePoint, SamplePoint, QWhereClause> {
  QueryBuilder<SamplePoint, SamplePoint, QAfterWhereClause>
      millisecondsSinceEpochEqualTo(Id millisecondsSinceEpoch) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: millisecondsSinceEpoch,
        upper: millisecondsSinceEpoch,
      ));
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterWhereClause>
      millisecondsSinceEpochNotEqualTo(Id millisecondsSinceEpoch) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(
                  upper: millisecondsSinceEpoch, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: millisecondsSinceEpoch, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: millisecondsSinceEpoch, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(
                  upper: millisecondsSinceEpoch, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterWhereClause>
      millisecondsSinceEpochGreaterThan(Id millisecondsSinceEpoch,
          {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(
            lower: millisecondsSinceEpoch, includeLower: include),
      );
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterWhereClause>
      millisecondsSinceEpochLessThan(Id millisecondsSinceEpoch,
          {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(
            upper: millisecondsSinceEpoch, includeUpper: include),
      );
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterWhereClause>
      millisecondsSinceEpochBetween(
    Id lowerMillisecondsSinceEpoch,
    Id upperMillisecondsSinceEpoch, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerMillisecondsSinceEpoch,
        includeLower: includeLower,
        upper: upperMillisecondsSinceEpoch,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SamplePointQueryFilter
    on QueryBuilder<SamplePoint, SamplePoint, QFilterCondition> {
  QueryBuilder<SamplePoint, SamplePoint, QAfterFilterCondition> leadIEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadI',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterFilterCondition>
      leadIGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leadI',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterFilterCondition> leadILessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leadI',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterFilterCondition> leadIBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leadI',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterFilterCondition> leadIIEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadII',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterFilterCondition>
      leadIIGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leadII',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterFilterCondition> leadIILessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leadII',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterFilterCondition> leadIIBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leadII',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterFilterCondition>
      millisecondsSinceEpochEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'millisecondsSinceEpoch',
        value: value,
      ));
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterFilterCondition>
      millisecondsSinceEpochGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'millisecondsSinceEpoch',
        value: value,
      ));
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterFilterCondition>
      millisecondsSinceEpochLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'millisecondsSinceEpoch',
        value: value,
      ));
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterFilterCondition>
      millisecondsSinceEpochBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'millisecondsSinceEpoch',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SamplePointQueryObject
    on QueryBuilder<SamplePoint, SamplePoint, QFilterCondition> {}

extension SamplePointQueryLinks
    on QueryBuilder<SamplePoint, SamplePoint, QFilterCondition> {}

extension SamplePointQuerySortBy
    on QueryBuilder<SamplePoint, SamplePoint, QSortBy> {
  QueryBuilder<SamplePoint, SamplePoint, QAfterSortBy> sortByLeadI() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadI', Sort.asc);
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterSortBy> sortByLeadIDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadI', Sort.desc);
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterSortBy> sortByLeadII() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadII', Sort.asc);
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterSortBy> sortByLeadIIDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadII', Sort.desc);
    });
  }
}

extension SamplePointQuerySortThenBy
    on QueryBuilder<SamplePoint, SamplePoint, QSortThenBy> {
  QueryBuilder<SamplePoint, SamplePoint, QAfterSortBy> thenByLeadI() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadI', Sort.asc);
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterSortBy> thenByLeadIDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadI', Sort.desc);
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterSortBy> thenByLeadII() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadII', Sort.asc);
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterSortBy> thenByLeadIIDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadII', Sort.desc);
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterSortBy>
      thenByMillisecondsSinceEpoch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'millisecondsSinceEpoch', Sort.asc);
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QAfterSortBy>
      thenByMillisecondsSinceEpochDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'millisecondsSinceEpoch', Sort.desc);
    });
  }
}

extension SamplePointQueryWhereDistinct
    on QueryBuilder<SamplePoint, SamplePoint, QDistinct> {
  QueryBuilder<SamplePoint, SamplePoint, QDistinct> distinctByLeadI() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leadI');
    });
  }

  QueryBuilder<SamplePoint, SamplePoint, QDistinct> distinctByLeadII() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leadII');
    });
  }
}

extension SamplePointQueryProperty
    on QueryBuilder<SamplePoint, SamplePoint, QQueryProperty> {
  QueryBuilder<SamplePoint, int, QQueryOperations>
      millisecondsSinceEpochProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'millisecondsSinceEpoch');
    });
  }

  QueryBuilder<SamplePoint, double, QQueryOperations> leadIProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leadI');
    });
  }

  QueryBuilder<SamplePoint, double, QQueryOperations> leadIIProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leadII');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFakeSamplePointCollection on Isar {
  IsarCollection<FakeSamplePoint> get fakeSamplePoints => this.collection();
}

const FakeSamplePointSchema = CollectionSchema(
  name: r'FakeSamplePoint',
  id: -7536874272993607975,
  properties: {
    r'leadI': PropertySchema(
      id: 0,
      name: r'leadI',
      type: IsarType.double,
    ),
    r'leadII': PropertySchema(
      id: 1,
      name: r'leadII',
      type: IsarType.double,
    )
  },
  estimateSize: _fakeSamplePointEstimateSize,
  serialize: _fakeSamplePointSerialize,
  deserialize: _fakeSamplePointDeserialize,
  deserializeProp: _fakeSamplePointDeserializeProp,
  idName: r'millisecondsSinceStart',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _fakeSamplePointGetId,
  getLinks: _fakeSamplePointGetLinks,
  attach: _fakeSamplePointAttach,
  version: '3.1.0+1',
);

int _fakeSamplePointEstimateSize(
  FakeSamplePoint object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _fakeSamplePointSerialize(
  FakeSamplePoint object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.leadI);
  writer.writeDouble(offsets[1], object.leadII);
}

FakeSamplePoint _fakeSamplePointDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FakeSamplePoint(
    leadI: reader.readDouble(offsets[0]),
    leadII: reader.readDouble(offsets[1]),
    millisecondsSinceStart: id,
  );
  return object;
}

P _fakeSamplePointDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _fakeSamplePointGetId(FakeSamplePoint object) {
  return object.millisecondsSinceStart;
}

List<IsarLinkBase<dynamic>> _fakeSamplePointGetLinks(FakeSamplePoint object) {
  return [];
}

void _fakeSamplePointAttach(
    IsarCollection<dynamic> col, Id id, FakeSamplePoint object) {}

extension FakeSamplePointQueryWhereSort
    on QueryBuilder<FakeSamplePoint, FakeSamplePoint, QWhere> {
  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterWhere>
      anyMillisecondsSinceStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FakeSamplePointQueryWhere
    on QueryBuilder<FakeSamplePoint, FakeSamplePoint, QWhereClause> {
  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterWhereClause>
      millisecondsSinceStartEqualTo(Id millisecondsSinceStart) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: millisecondsSinceStart,
        upper: millisecondsSinceStart,
      ));
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterWhereClause>
      millisecondsSinceStartNotEqualTo(Id millisecondsSinceStart) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(
                  upper: millisecondsSinceStart, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: millisecondsSinceStart, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: millisecondsSinceStart, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(
                  upper: millisecondsSinceStart, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterWhereClause>
      millisecondsSinceStartGreaterThan(Id millisecondsSinceStart,
          {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(
            lower: millisecondsSinceStart, includeLower: include),
      );
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterWhereClause>
      millisecondsSinceStartLessThan(Id millisecondsSinceStart,
          {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(
            upper: millisecondsSinceStart, includeUpper: include),
      );
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterWhereClause>
      millisecondsSinceStartBetween(
    Id lowerMillisecondsSinceStart,
    Id upperMillisecondsSinceStart, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerMillisecondsSinceStart,
        includeLower: includeLower,
        upper: upperMillisecondsSinceStart,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FakeSamplePointQueryFilter
    on QueryBuilder<FakeSamplePoint, FakeSamplePoint, QFilterCondition> {
  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterFilterCondition>
      leadIEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadI',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterFilterCondition>
      leadIGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leadI',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterFilterCondition>
      leadILessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leadI',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterFilterCondition>
      leadIBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leadI',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterFilterCondition>
      leadIIEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadII',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterFilterCondition>
      leadIIGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leadII',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterFilterCondition>
      leadIILessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leadII',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterFilterCondition>
      leadIIBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leadII',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterFilterCondition>
      millisecondsSinceStartEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'millisecondsSinceStart',
        value: value,
      ));
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterFilterCondition>
      millisecondsSinceStartGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'millisecondsSinceStart',
        value: value,
      ));
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterFilterCondition>
      millisecondsSinceStartLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'millisecondsSinceStart',
        value: value,
      ));
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterFilterCondition>
      millisecondsSinceStartBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'millisecondsSinceStart',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FakeSamplePointQueryObject
    on QueryBuilder<FakeSamplePoint, FakeSamplePoint, QFilterCondition> {}

extension FakeSamplePointQueryLinks
    on QueryBuilder<FakeSamplePoint, FakeSamplePoint, QFilterCondition> {}

extension FakeSamplePointQuerySortBy
    on QueryBuilder<FakeSamplePoint, FakeSamplePoint, QSortBy> {
  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterSortBy> sortByLeadI() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadI', Sort.asc);
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterSortBy>
      sortByLeadIDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadI', Sort.desc);
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterSortBy> sortByLeadII() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadII', Sort.asc);
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterSortBy>
      sortByLeadIIDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadII', Sort.desc);
    });
  }
}

extension FakeSamplePointQuerySortThenBy
    on QueryBuilder<FakeSamplePoint, FakeSamplePoint, QSortThenBy> {
  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterSortBy> thenByLeadI() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadI', Sort.asc);
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterSortBy>
      thenByLeadIDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadI', Sort.desc);
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterSortBy> thenByLeadII() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadII', Sort.asc);
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterSortBy>
      thenByLeadIIDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadII', Sort.desc);
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterSortBy>
      thenByMillisecondsSinceStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'millisecondsSinceStart', Sort.asc);
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QAfterSortBy>
      thenByMillisecondsSinceStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'millisecondsSinceStart', Sort.desc);
    });
  }
}

extension FakeSamplePointQueryWhereDistinct
    on QueryBuilder<FakeSamplePoint, FakeSamplePoint, QDistinct> {
  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QDistinct> distinctByLeadI() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leadI');
    });
  }

  QueryBuilder<FakeSamplePoint, FakeSamplePoint, QDistinct> distinctByLeadII() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leadII');
    });
  }
}

extension FakeSamplePointQueryProperty
    on QueryBuilder<FakeSamplePoint, FakeSamplePoint, QQueryProperty> {
  QueryBuilder<FakeSamplePoint, int, QQueryOperations>
      millisecondsSinceStartProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'millisecondsSinceStart');
    });
  }

  QueryBuilder<FakeSamplePoint, double, QQueryOperations> leadIProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leadI');
    });
  }

  QueryBuilder<FakeSamplePoint, double, QQueryOperations> leadIIProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leadII');
    });
  }
}
