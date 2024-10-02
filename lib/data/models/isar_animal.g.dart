// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_animal.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarAnimalCollection on Isar {
  IsarCollection<IsarAnimal> get isarAnimals => this.collection();
}

const IsarAnimalSchema = CollectionSchema(
  name: r'IsarAnimal',
  id: -8312941717384079697,
  properties: {
    r'hunger': PropertySchema(
      id: 0,
      name: r'hunger',
      type: IsarType.long,
    ),
    r'isAlive': PropertySchema(
      id: 1,
      name: r'isAlive',
      type: IsarType.bool,
    ),
    r'isHungry': PropertySchema(
      id: 2,
      name: r'isHungry',
      type: IsarType.bool,
    )
  },
  estimateSize: _isarAnimalEstimateSize,
  serialize: _isarAnimalSerialize,
  deserialize: _isarAnimalDeserialize,
  deserializeProp: _isarAnimalDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _isarAnimalGetId,
  getLinks: _isarAnimalGetLinks,
  attach: _isarAnimalAttach,
  version: '3.1.0+1',
);

int _isarAnimalEstimateSize(
  IsarAnimal object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _isarAnimalSerialize(
  IsarAnimal object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hunger);
  writer.writeBool(offsets[1], object.isAlive);
  writer.writeBool(offsets[2], object.isHungry);
}

IsarAnimal _isarAnimalDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarAnimal();
  object.hunger = reader.readLong(offsets[0]);
  object.id = id;
  object.isAlive = reader.readBool(offsets[1]);
  object.isHungry = reader.readBool(offsets[2]);
  return object;
}

P _isarAnimalDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarAnimalGetId(IsarAnimal object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarAnimalGetLinks(IsarAnimal object) {
  return [];
}

void _isarAnimalAttach(IsarCollection<dynamic> col, Id id, IsarAnimal object) {
  object.id = id;
}

extension IsarAnimalQueryWhereSort
    on QueryBuilder<IsarAnimal, IsarAnimal, QWhere> {
  QueryBuilder<IsarAnimal, IsarAnimal, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarAnimalQueryWhere
    on QueryBuilder<IsarAnimal, IsarAnimal, QWhereClause> {
  QueryBuilder<IsarAnimal, IsarAnimal, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterWhereClause> idBetween(
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
}

extension IsarAnimalQueryFilter
    on QueryBuilder<IsarAnimal, IsarAnimal, QFilterCondition> {
  QueryBuilder<IsarAnimal, IsarAnimal, QAfterFilterCondition> hungerEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hunger',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterFilterCondition> hungerGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hunger',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterFilterCondition> hungerLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hunger',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterFilterCondition> hungerBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hunger',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterFilterCondition> idBetween(
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

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterFilterCondition> isAliveEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAlive',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterFilterCondition> isHungryEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isHungry',
        value: value,
      ));
    });
  }
}

extension IsarAnimalQueryObject
    on QueryBuilder<IsarAnimal, IsarAnimal, QFilterCondition> {}

extension IsarAnimalQueryLinks
    on QueryBuilder<IsarAnimal, IsarAnimal, QFilterCondition> {}

extension IsarAnimalQuerySortBy
    on QueryBuilder<IsarAnimal, IsarAnimal, QSortBy> {
  QueryBuilder<IsarAnimal, IsarAnimal, QAfterSortBy> sortByHunger() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hunger', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterSortBy> sortByHungerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hunger', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterSortBy> sortByIsAlive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAlive', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterSortBy> sortByIsAliveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAlive', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterSortBy> sortByIsHungry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHungry', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterSortBy> sortByIsHungryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHungry', Sort.desc);
    });
  }
}

extension IsarAnimalQuerySortThenBy
    on QueryBuilder<IsarAnimal, IsarAnimal, QSortThenBy> {
  QueryBuilder<IsarAnimal, IsarAnimal, QAfterSortBy> thenByHunger() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hunger', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterSortBy> thenByHungerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hunger', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterSortBy> thenByIsAlive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAlive', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterSortBy> thenByIsAliveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAlive', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterSortBy> thenByIsHungry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHungry', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QAfterSortBy> thenByIsHungryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHungry', Sort.desc);
    });
  }
}

extension IsarAnimalQueryWhereDistinct
    on QueryBuilder<IsarAnimal, IsarAnimal, QDistinct> {
  QueryBuilder<IsarAnimal, IsarAnimal, QDistinct> distinctByHunger() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hunger');
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QDistinct> distinctByIsAlive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAlive');
    });
  }

  QueryBuilder<IsarAnimal, IsarAnimal, QDistinct> distinctByIsHungry() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isHungry');
    });
  }
}

extension IsarAnimalQueryProperty
    on QueryBuilder<IsarAnimal, IsarAnimal, QQueryProperty> {
  QueryBuilder<IsarAnimal, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarAnimal, int, QQueryOperations> hungerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hunger');
    });
  }

  QueryBuilder<IsarAnimal, bool, QQueryOperations> isAliveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAlive');
    });
  }

  QueryBuilder<IsarAnimal, bool, QQueryOperations> isHungryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isHungry');
    });
  }
}
