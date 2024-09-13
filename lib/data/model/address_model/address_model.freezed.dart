// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  @JsonKey(name: "place_id")
  int? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: "licence")
  String? get licence => throw _privateConstructorUsedError;
  @JsonKey(name: "osm_type")
  String? get osmType => throw _privateConstructorUsedError;
  @JsonKey(name: "osm_id")
  int? get osmId => throw _privateConstructorUsedError;
  @JsonKey(name: "lat")
  String? get lat => throw _privateConstructorUsedError;
  @JsonKey(name: "lon")
  String? get lon => throw _privateConstructorUsedError;
  @JsonKey(name: "class")
  String? get addressModelClass => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "place_rank")
  int? get placeRank => throw _privateConstructorUsedError;
  @JsonKey(name: "importance")
  double? get importance => throw _privateConstructorUsedError;
  @JsonKey(name: "addresstype")
  String? get addresstype => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  Address? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "boundingbox")
  List<String>? get boundingbox => throw _privateConstructorUsedError;

  /// Serializes this AddressModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res, AddressModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "place_id") int? placeId,
      @JsonKey(name: "licence") String? licence,
      @JsonKey(name: "osm_type") String? osmType,
      @JsonKey(name: "osm_id") int? osmId,
      @JsonKey(name: "lat") String? lat,
      @JsonKey(name: "lon") String? lon,
      @JsonKey(name: "class") String? addressModelClass,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "place_rank") int? placeRank,
      @JsonKey(name: "importance") double? importance,
      @JsonKey(name: "addresstype") String? addresstype,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "display_name") String? displayName,
      @JsonKey(name: "address") Address? address,
      @JsonKey(name: "boundingbox") List<String>? boundingbox});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res, $Val extends AddressModel>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = freezed,
    Object? licence = freezed,
    Object? osmType = freezed,
    Object? osmId = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? addressModelClass = freezed,
    Object? type = freezed,
    Object? placeRank = freezed,
    Object? importance = freezed,
    Object? addresstype = freezed,
    Object? name = freezed,
    Object? displayName = freezed,
    Object? address = freezed,
    Object? boundingbox = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      licence: freezed == licence
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as String?,
      osmType: freezed == osmType
          ? _value.osmType
          : osmType // ignore: cast_nullable_to_non_nullable
              as String?,
      osmId: freezed == osmId
          ? _value.osmId
          : osmId // ignore: cast_nullable_to_non_nullable
              as int?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String?,
      addressModelClass: freezed == addressModelClass
          ? _value.addressModelClass
          : addressModelClass // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      placeRank: freezed == placeRank
          ? _value.placeRank
          : placeRank // ignore: cast_nullable_to_non_nullable
              as int?,
      importance: freezed == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as double?,
      addresstype: freezed == addresstype
          ? _value.addresstype
          : addresstype // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      boundingbox: freezed == boundingbox
          ? _value.boundingbox
          : boundingbox // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressModelImplCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$AddressModelImplCopyWith(
          _$AddressModelImpl value, $Res Function(_$AddressModelImpl) then) =
      __$$AddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "place_id") int? placeId,
      @JsonKey(name: "licence") String? licence,
      @JsonKey(name: "osm_type") String? osmType,
      @JsonKey(name: "osm_id") int? osmId,
      @JsonKey(name: "lat") String? lat,
      @JsonKey(name: "lon") String? lon,
      @JsonKey(name: "class") String? addressModelClass,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "place_rank") int? placeRank,
      @JsonKey(name: "importance") double? importance,
      @JsonKey(name: "addresstype") String? addresstype,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "display_name") String? displayName,
      @JsonKey(name: "address") Address? address,
      @JsonKey(name: "boundingbox") List<String>? boundingbox});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$AddressModelImplCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$AddressModelImpl>
    implements _$$AddressModelImplCopyWith<$Res> {
  __$$AddressModelImplCopyWithImpl(
      _$AddressModelImpl _value, $Res Function(_$AddressModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = freezed,
    Object? licence = freezed,
    Object? osmType = freezed,
    Object? osmId = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? addressModelClass = freezed,
    Object? type = freezed,
    Object? placeRank = freezed,
    Object? importance = freezed,
    Object? addresstype = freezed,
    Object? name = freezed,
    Object? displayName = freezed,
    Object? address = freezed,
    Object? boundingbox = freezed,
  }) {
    return _then(_$AddressModelImpl(
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      licence: freezed == licence
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as String?,
      osmType: freezed == osmType
          ? _value.osmType
          : osmType // ignore: cast_nullable_to_non_nullable
              as String?,
      osmId: freezed == osmId
          ? _value.osmId
          : osmId // ignore: cast_nullable_to_non_nullable
              as int?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String?,
      addressModelClass: freezed == addressModelClass
          ? _value.addressModelClass
          : addressModelClass // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      placeRank: freezed == placeRank
          ? _value.placeRank
          : placeRank // ignore: cast_nullable_to_non_nullable
              as int?,
      importance: freezed == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as double?,
      addresstype: freezed == addresstype
          ? _value.addresstype
          : addresstype // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      boundingbox: freezed == boundingbox
          ? _value._boundingbox
          : boundingbox // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressModelImpl implements _AddressModel {
  const _$AddressModelImpl(
      {@JsonKey(name: "place_id") this.placeId,
      @JsonKey(name: "licence") this.licence,
      @JsonKey(name: "osm_type") this.osmType,
      @JsonKey(name: "osm_id") this.osmId,
      @JsonKey(name: "lat") this.lat,
      @JsonKey(name: "lon") this.lon,
      @JsonKey(name: "class") this.addressModelClass,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "place_rank") this.placeRank,
      @JsonKey(name: "importance") this.importance,
      @JsonKey(name: "addresstype") this.addresstype,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "display_name") this.displayName,
      @JsonKey(name: "address") this.address,
      @JsonKey(name: "boundingbox") final List<String>? boundingbox})
      : _boundingbox = boundingbox;

  factory _$AddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressModelImplFromJson(json);

  @override
  @JsonKey(name: "place_id")
  final int? placeId;
  @override
  @JsonKey(name: "licence")
  final String? licence;
  @override
  @JsonKey(name: "osm_type")
  final String? osmType;
  @override
  @JsonKey(name: "osm_id")
  final int? osmId;
  @override
  @JsonKey(name: "lat")
  final String? lat;
  @override
  @JsonKey(name: "lon")
  final String? lon;
  @override
  @JsonKey(name: "class")
  final String? addressModelClass;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "place_rank")
  final int? placeRank;
  @override
  @JsonKey(name: "importance")
  final double? importance;
  @override
  @JsonKey(name: "addresstype")
  final String? addresstype;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "display_name")
  final String? displayName;
  @override
  @JsonKey(name: "address")
  final Address? address;
  final List<String>? _boundingbox;
  @override
  @JsonKey(name: "boundingbox")
  List<String>? get boundingbox {
    final value = _boundingbox;
    if (value == null) return null;
    if (_boundingbox is EqualUnmodifiableListView) return _boundingbox;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddressModel(placeId: $placeId, licence: $licence, osmType: $osmType, osmId: $osmId, lat: $lat, lon: $lon, addressModelClass: $addressModelClass, type: $type, placeRank: $placeRank, importance: $importance, addresstype: $addresstype, name: $name, displayName: $displayName, address: $address, boundingbox: $boundingbox)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressModelImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.licence, licence) || other.licence == licence) &&
            (identical(other.osmType, osmType) || other.osmType == osmType) &&
            (identical(other.osmId, osmId) || other.osmId == osmId) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.addressModelClass, addressModelClass) ||
                other.addressModelClass == addressModelClass) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.placeRank, placeRank) ||
                other.placeRank == placeRank) &&
            (identical(other.importance, importance) ||
                other.importance == importance) &&
            (identical(other.addresstype, addresstype) ||
                other.addresstype == addresstype) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._boundingbox, _boundingbox));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      placeId,
      licence,
      osmType,
      osmId,
      lat,
      lon,
      addressModelClass,
      type,
      placeRank,
      importance,
      addresstype,
      name,
      displayName,
      address,
      const DeepCollectionEquality().hash(_boundingbox));

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      __$$AddressModelImplCopyWithImpl<_$AddressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressModelImplToJson(
      this,
    );
  }
}

abstract class _AddressModel implements AddressModel {
  const factory _AddressModel(
          {@JsonKey(name: "place_id") final int? placeId,
          @JsonKey(name: "licence") final String? licence,
          @JsonKey(name: "osm_type") final String? osmType,
          @JsonKey(name: "osm_id") final int? osmId,
          @JsonKey(name: "lat") final String? lat,
          @JsonKey(name: "lon") final String? lon,
          @JsonKey(name: "class") final String? addressModelClass,
          @JsonKey(name: "type") final String? type,
          @JsonKey(name: "place_rank") final int? placeRank,
          @JsonKey(name: "importance") final double? importance,
          @JsonKey(name: "addresstype") final String? addresstype,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "display_name") final String? displayName,
          @JsonKey(name: "address") final Address? address,
          @JsonKey(name: "boundingbox") final List<String>? boundingbox}) =
      _$AddressModelImpl;

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$AddressModelImpl.fromJson;

  @override
  @JsonKey(name: "place_id")
  int? get placeId;
  @override
  @JsonKey(name: "licence")
  String? get licence;
  @override
  @JsonKey(name: "osm_type")
  String? get osmType;
  @override
  @JsonKey(name: "osm_id")
  int? get osmId;
  @override
  @JsonKey(name: "lat")
  String? get lat;
  @override
  @JsonKey(name: "lon")
  String? get lon;
  @override
  @JsonKey(name: "class")
  String? get addressModelClass;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "place_rank")
  int? get placeRank;
  @override
  @JsonKey(name: "importance")
  double? get importance;
  @override
  @JsonKey(name: "addresstype")
  String? get addresstype;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "display_name")
  String? get displayName;
  @override
  @JsonKey(name: "address")
  Address? get address;
  @override
  @JsonKey(name: "boundingbox")
  List<String>? get boundingbox;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  @JsonKey(name: "road")
  String? get road => throw _privateConstructorUsedError;
  @JsonKey(name: "city_block")
  String? get cityBlock => throw _privateConstructorUsedError;
  @JsonKey(name: "neighbourhood")
  String? get neighbourhood => throw _privateConstructorUsedError;
  @JsonKey(name: "suburb")
  String? get suburb => throw _privateConstructorUsedError;
  @JsonKey(name: "city_district")
  String? get cityDistrict => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "ISO3166-2-lvl4")
  String? get iso31662Lvl4 => throw _privateConstructorUsedError;
  @JsonKey(name: "region")
  String? get region => throw _privateConstructorUsedError;
  @JsonKey(name: "ISO3166-2-lvl3")
  String? get iso31662Lvl3 => throw _privateConstructorUsedError;
  @JsonKey(name: "postcode")
  String? get postcode => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "country_code")
  String? get countryCode => throw _privateConstructorUsedError;

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {@JsonKey(name: "road") String? road,
      @JsonKey(name: "city_block") String? cityBlock,
      @JsonKey(name: "neighbourhood") String? neighbourhood,
      @JsonKey(name: "suburb") String? suburb,
      @JsonKey(name: "city_district") String? cityDistrict,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "ISO3166-2-lvl4") String? iso31662Lvl4,
      @JsonKey(name: "region") String? region,
      @JsonKey(name: "ISO3166-2-lvl3") String? iso31662Lvl3,
      @JsonKey(name: "postcode") String? postcode,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "country_code") String? countryCode});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? road = freezed,
    Object? cityBlock = freezed,
    Object? neighbourhood = freezed,
    Object? suburb = freezed,
    Object? cityDistrict = freezed,
    Object? city = freezed,
    Object? iso31662Lvl4 = freezed,
    Object? region = freezed,
    Object? iso31662Lvl3 = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_value.copyWith(
      road: freezed == road
          ? _value.road
          : road // ignore: cast_nullable_to_non_nullable
              as String?,
      cityBlock: freezed == cityBlock
          ? _value.cityBlock
          : cityBlock // ignore: cast_nullable_to_non_nullable
              as String?,
      neighbourhood: freezed == neighbourhood
          ? _value.neighbourhood
          : neighbourhood // ignore: cast_nullable_to_non_nullable
              as String?,
      suburb: freezed == suburb
          ? _value.suburb
          : suburb // ignore: cast_nullable_to_non_nullable
              as String?,
      cityDistrict: freezed == cityDistrict
          ? _value.cityDistrict
          : cityDistrict // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      iso31662Lvl4: freezed == iso31662Lvl4
          ? _value.iso31662Lvl4
          : iso31662Lvl4 // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      iso31662Lvl3: freezed == iso31662Lvl3
          ? _value.iso31662Lvl3
          : iso31662Lvl3 // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "road") String? road,
      @JsonKey(name: "city_block") String? cityBlock,
      @JsonKey(name: "neighbourhood") String? neighbourhood,
      @JsonKey(name: "suburb") String? suburb,
      @JsonKey(name: "city_district") String? cityDistrict,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "ISO3166-2-lvl4") String? iso31662Lvl4,
      @JsonKey(name: "region") String? region,
      @JsonKey(name: "ISO3166-2-lvl3") String? iso31662Lvl3,
      @JsonKey(name: "postcode") String? postcode,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "country_code") String? countryCode});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? road = freezed,
    Object? cityBlock = freezed,
    Object? neighbourhood = freezed,
    Object? suburb = freezed,
    Object? cityDistrict = freezed,
    Object? city = freezed,
    Object? iso31662Lvl4 = freezed,
    Object? region = freezed,
    Object? iso31662Lvl3 = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_$AddressImpl(
      road: freezed == road
          ? _value.road
          : road // ignore: cast_nullable_to_non_nullable
              as String?,
      cityBlock: freezed == cityBlock
          ? _value.cityBlock
          : cityBlock // ignore: cast_nullable_to_non_nullable
              as String?,
      neighbourhood: freezed == neighbourhood
          ? _value.neighbourhood
          : neighbourhood // ignore: cast_nullable_to_non_nullable
              as String?,
      suburb: freezed == suburb
          ? _value.suburb
          : suburb // ignore: cast_nullable_to_non_nullable
              as String?,
      cityDistrict: freezed == cityDistrict
          ? _value.cityDistrict
          : cityDistrict // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      iso31662Lvl4: freezed == iso31662Lvl4
          ? _value.iso31662Lvl4
          : iso31662Lvl4 // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      iso31662Lvl3: freezed == iso31662Lvl3
          ? _value.iso31662Lvl3
          : iso31662Lvl3 // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {@JsonKey(name: "road") this.road,
      @JsonKey(name: "city_block") this.cityBlock,
      @JsonKey(name: "neighbourhood") this.neighbourhood,
      @JsonKey(name: "suburb") this.suburb,
      @JsonKey(name: "city_district") this.cityDistrict,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "ISO3166-2-lvl4") this.iso31662Lvl4,
      @JsonKey(name: "region") this.region,
      @JsonKey(name: "ISO3166-2-lvl3") this.iso31662Lvl3,
      @JsonKey(name: "postcode") this.postcode,
      @JsonKey(name: "country") this.country,
      @JsonKey(name: "country_code") this.countryCode});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  @JsonKey(name: "road")
  final String? road;
  @override
  @JsonKey(name: "city_block")
  final String? cityBlock;
  @override
  @JsonKey(name: "neighbourhood")
  final String? neighbourhood;
  @override
  @JsonKey(name: "suburb")
  final String? suburb;
  @override
  @JsonKey(name: "city_district")
  final String? cityDistrict;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "ISO3166-2-lvl4")
  final String? iso31662Lvl4;
  @override
  @JsonKey(name: "region")
  final String? region;
  @override
  @JsonKey(name: "ISO3166-2-lvl3")
  final String? iso31662Lvl3;
  @override
  @JsonKey(name: "postcode")
  final String? postcode;
  @override
  @JsonKey(name: "country")
  final String? country;
  @override
  @JsonKey(name: "country_code")
  final String? countryCode;

  @override
  String toString() {
    return 'Address(road: $road, cityBlock: $cityBlock, neighbourhood: $neighbourhood, suburb: $suburb, cityDistrict: $cityDistrict, city: $city, iso31662Lvl4: $iso31662Lvl4, region: $region, iso31662Lvl3: $iso31662Lvl3, postcode: $postcode, country: $country, countryCode: $countryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.road, road) || other.road == road) &&
            (identical(other.cityBlock, cityBlock) ||
                other.cityBlock == cityBlock) &&
            (identical(other.neighbourhood, neighbourhood) ||
                other.neighbourhood == neighbourhood) &&
            (identical(other.suburb, suburb) || other.suburb == suburb) &&
            (identical(other.cityDistrict, cityDistrict) ||
                other.cityDistrict == cityDistrict) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.iso31662Lvl4, iso31662Lvl4) ||
                other.iso31662Lvl4 == iso31662Lvl4) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.iso31662Lvl3, iso31662Lvl3) ||
                other.iso31662Lvl3 == iso31662Lvl3) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      road,
      cityBlock,
      neighbourhood,
      suburb,
      cityDistrict,
      city,
      iso31662Lvl4,
      region,
      iso31662Lvl3,
      postcode,
      country,
      countryCode);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
          {@JsonKey(name: "road") final String? road,
          @JsonKey(name: "city_block") final String? cityBlock,
          @JsonKey(name: "neighbourhood") final String? neighbourhood,
          @JsonKey(name: "suburb") final String? suburb,
          @JsonKey(name: "city_district") final String? cityDistrict,
          @JsonKey(name: "city") final String? city,
          @JsonKey(name: "ISO3166-2-lvl4") final String? iso31662Lvl4,
          @JsonKey(name: "region") final String? region,
          @JsonKey(name: "ISO3166-2-lvl3") final String? iso31662Lvl3,
          @JsonKey(name: "postcode") final String? postcode,
          @JsonKey(name: "country") final String? country,
          @JsonKey(name: "country_code") final String? countryCode}) =
      _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  @JsonKey(name: "road")
  String? get road;
  @override
  @JsonKey(name: "city_block")
  String? get cityBlock;
  @override
  @JsonKey(name: "neighbourhood")
  String? get neighbourhood;
  @override
  @JsonKey(name: "suburb")
  String? get suburb;
  @override
  @JsonKey(name: "city_district")
  String? get cityDistrict;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "ISO3166-2-lvl4")
  String? get iso31662Lvl4;
  @override
  @JsonKey(name: "region")
  String? get region;
  @override
  @JsonKey(name: "ISO3166-2-lvl3")
  String? get iso31662Lvl3;
  @override
  @JsonKey(name: "postcode")
  String? get postcode;
  @override
  @JsonKey(name: "country")
  String? get country;
  @override
  @JsonKey(name: "country_code")
  String? get countryCode;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
