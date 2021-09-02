// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationSearch _$LocationSearchFromJson(Map<String, dynamic> json) {
  return _LocationSearch.fromJson(json);
}

/// @nodoc
class _$LocationSearchTearOff {
  const _$LocationSearchTearOff();

  _LocationSearch call(
      {@JsonKey(name: "title") required String name,
      @JsonKey(name: "location_type") required String type,
      @JsonKey(name: "woeid") required int id}) {
    return _LocationSearch(
      name: name,
      type: type,
      id: id,
    );
  }

  LocationSearch fromJson(Map<String, Object> json) {
    return LocationSearch.fromJson(json);
  }
}

/// @nodoc
const $LocationSearch = _$LocationSearchTearOff();

/// @nodoc
mixin _$LocationSearch {
  @JsonKey(name: "title")
  String get name =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "location_type")
  String get type =>
      throw _privateConstructorUsedError; 
  @JsonKey(name: "woeid")
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationSearchCopyWith<LocationSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSearchCopyWith<$Res> {
  factory $LocationSearchCopyWith(
          LocationSearch value, $Res Function(LocationSearch) then) =
      _$LocationSearchCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "title") String name,
      @JsonKey(name: "location_type") String type,
      @JsonKey(name: "woeid") int id});
}

/// @nodoc
class _$LocationSearchCopyWithImpl<$Res>
    implements $LocationSearchCopyWith<$Res> {
  _$LocationSearchCopyWithImpl(this._value, this._then);

  final LocationSearch _value;
  // ignore: unused_field
  final $Res Function(LocationSearch) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$LocationSearchCopyWith<$Res>
    implements $LocationSearchCopyWith<$Res> {
  factory _$LocationSearchCopyWith(
          _LocationSearch value, $Res Function(_LocationSearch) then) =
      __$LocationSearchCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "title") String name,
      @JsonKey(name: "location_type") String type,
      @JsonKey(name: "woeid") int id});
}

/// @nodoc
class __$LocationSearchCopyWithImpl<$Res>
    extends _$LocationSearchCopyWithImpl<$Res>
    implements _$LocationSearchCopyWith<$Res> {
  __$LocationSearchCopyWithImpl(
      _LocationSearch _value, $Res Function(_LocationSearch) _then)
      : super(_value, (v) => _then(v as _LocationSearch));

  @override
  _LocationSearch get _value => super._value as _LocationSearch;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? id = freezed,
  }) {
    return _then(_LocationSearch(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationSearch implements _LocationSearch {
  _$_LocationSearch(
      {@JsonKey(name: "title") required this.name,
      @JsonKey(name: "location_type") required this.type,
      @JsonKey(name: "woeid") required this.id});

  factory _$_LocationSearch.fromJson(Map<String, dynamic> json) =>
      _$$_LocationSearchFromJson(json);

  @override 
  @JsonKey(name: "title")
  final String name;
  @override 
  @JsonKey(name: "location_type")
  final String type;
  @override 
  @JsonKey(name: "woeid")
  final int id;

  @override
  String toString() {
    return 'LocationSearch(name: $name, type: $type, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationSearch &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$LocationSearchCopyWith<_LocationSearch> get copyWith =>
      __$LocationSearchCopyWithImpl<_LocationSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationSearchToJson(this);
  }
}

abstract class _LocationSearch implements LocationSearch {
  factory _LocationSearch(
      {@JsonKey(name: "title") required String name,
      @JsonKey(name: "location_type") required String type,
      @JsonKey(name: "woeid") required int id}) = _$_LocationSearch;

  factory _LocationSearch.fromJson(Map<String, dynamic> json) =
      _$_LocationSearch.fromJson;

  @override 
  @JsonKey(name: "title")
  String get name => throw _privateConstructorUsedError;
  @override 
  @JsonKey(name: "location_type")
  String get type => throw _privateConstructorUsedError;
  @override 
  @JsonKey(name: "woeid")
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationSearchCopyWith<_LocationSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
