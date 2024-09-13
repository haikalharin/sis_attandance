// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      placeId: (json['place_id'] as num?)?.toInt(),
      licence: json['licence'] as String?,
      osmType: json['osm_type'] as String?,
      osmId: (json['osm_id'] as num?)?.toInt(),
      lat: json['lat'] as String?,
      lon: json['lon'] as String?,
      addressModelClass: json['class'] as String?,
      type: json['type'] as String?,
      placeRank: (json['place_rank'] as num?)?.toInt(),
      importance: (json['importance'] as num?)?.toDouble(),
      addresstype: json['addresstype'] as String?,
      name: json['name'] as String?,
      displayName: json['display_name'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      boundingbox: (json['boundingbox'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'licence': instance.licence,
      'osm_type': instance.osmType,
      'osm_id': instance.osmId,
      'lat': instance.lat,
      'lon': instance.lon,
      'class': instance.addressModelClass,
      'type': instance.type,
      'place_rank': instance.placeRank,
      'importance': instance.importance,
      'addresstype': instance.addresstype,
      'name': instance.name,
      'display_name': instance.displayName,
      'address': instance.address,
      'boundingbox': instance.boundingbox,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      road: json['road'] as String?,
      cityBlock: json['city_block'] as String?,
      neighbourhood: json['neighbourhood'] as String?,
      suburb: json['suburb'] as String?,
      cityDistrict: json['city_district'] as String?,
      city: json['city'] as String?,
      iso31662Lvl4: json['ISO3166-2-lvl4'] as String?,
      region: json['region'] as String?,
      iso31662Lvl3: json['ISO3166-2-lvl3'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
      countryCode: json['country_code'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'road': instance.road,
      'city_block': instance.cityBlock,
      'neighbourhood': instance.neighbourhood,
      'suburb': instance.suburb,
      'city_district': instance.cityDistrict,
      'city': instance.city,
      'ISO3166-2-lvl4': instance.iso31662Lvl4,
      'region': instance.region,
      'ISO3166-2-lvl3': instance.iso31662Lvl3,
      'postcode': instance.postcode,
      'country': instance.country,
      'country_code': instance.countryCode,
    };
