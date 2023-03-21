// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

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
  version: '3.0.5',
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
