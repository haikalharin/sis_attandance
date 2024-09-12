// To parse this JSON data, do
//
//     final addressModel = addressModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

AddressModel addressModelFromJson(String str) => AddressModel.fromJson(json.decode(str));

String addressModelToJson(AddressModel data) => json.encode(data.toJson());

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    @JsonKey(name: "place_id")
    int? placeId,
    @JsonKey(name: "licence")
    String? licence,
    @JsonKey(name: "osm_type")
    String? osmType,
    @JsonKey(name: "osm_id")
    int? osmId,
    @JsonKey(name: "lat")
    String? lat,
    @JsonKey(name: "lon")
    String? lon,
    @JsonKey(name: "class")
    String? addressModelClass,
    @JsonKey(name: "type")
    String? type,
    @JsonKey(name: "place_rank")
    int? placeRank,
    @JsonKey(name: "importance")
    double? importance,
    @JsonKey(name: "addresstype")
    String? addresstype,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "display_name")
    String? displayName,
    @JsonKey(name: "address")
    Address? address,
    @JsonKey(name: "boundingbox")
    List<String>? boundingbox,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    @JsonKey(name: "road")
    String? road,
    @JsonKey(name: "city_block")
    String? cityBlock,
    @JsonKey(name: "neighbourhood")
    String? neighbourhood,
    @JsonKey(name: "suburb")
    String? suburb,
    @JsonKey(name: "city_district")
    String? cityDistrict,
    @JsonKey(name: "city")
    String? city,
    @JsonKey(name: "ISO3166-2-lvl4")
    String? iso31662Lvl4,
    @JsonKey(name: "region")
    String? region,
    @JsonKey(name: "ISO3166-2-lvl3")
    String? iso31662Lvl3,
    @JsonKey(name: "postcode")
    String? postcode,
    @JsonKey(name: "country")
    String? country,
    @JsonKey(name: "country_code")
    String? countryCode,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}
