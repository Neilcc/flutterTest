
import 'package:json_annotation/json_annotation.dart';

part 'ComplexTextVO.g.dart';

@JsonSerializable()
class ComplexTextVO {
  String value;

  int type;

  String schemeUrl;

  bool bold;

  bool newParagraph;

  String picUrl;

  bool crossLine; // 中间删除线

  int fontSize;

  ComplexTextVO(); // 字体大小（单位：px）
  factory ComplexTextVO.fromJson(Map<String, dynamic> json) =>
      _$ComplexTextVOFromJson(json);

  Map<String, dynamic> toJson() => _$ComplexTextVOToJson(this);

}