// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ComplexTextVO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComplexTextVO _$ComplexTextVOFromJson(Map<String, dynamic> json) {
  return ComplexTextVO()
    ..value = json['value'] as String
    ..type = json['type'] as int
    ..schemeUrl = json['schemeUrl'] as String
    ..bold = json['bold'] as bool
    ..newParagraph = json['newParagraph'] as bool
    ..picUrl = json['picUrl'] as String
    ..crossLine = json['crossLine'] as bool
    ..fontSize = json['fontSize'] as int;
}

Map<String, dynamic> _$ComplexTextVOToJson(ComplexTextVO instance) =>
    <String, dynamic>{
      'value': instance.value,
      'type': instance.type,
      'schemeUrl': instance.schemeUrl,
      'bold': instance.bold,
      'newParagraph': instance.newParagraph,
      'picUrl': instance.picUrl,
      'crossLine': instance.crossLine,
      'fontSize': instance.fontSize
    };
