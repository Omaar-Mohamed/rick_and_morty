// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_char_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllCharResponseModel _$AllCharResponseModelFromJson(
        Map<String, dynamic> json) =>
    AllCharResponseModel(
      allCharsList: (json['results'] as List<dynamic>?)
          ?.map((e) => AllChars.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllCharResponseModelToJson(
        AllCharResponseModel instance) =>
    <String, dynamic>{
      'results': instance.allCharsList,
    };

AllChars _$AllCharsFromJson(Map<String, dynamic> json) => AllChars(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$AllCharsToJson(AllChars instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
