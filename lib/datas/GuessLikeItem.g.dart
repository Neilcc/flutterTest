// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GuessLikeItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuessLikeItem _$GuessLikeItemFromJson(Map<String, dynamic> json) {
  return GuessLikeItem()
    ..type = json['type'] as int
    ..id = json['id'] as String
    ..itemCard = json['itemCard'] == null
        ? null
        : IndexRcmdItemCardVO.fromJson(json['itemCard'] as Map<String, dynamic>)
    ..topicCard = json['topicCard'] == null
        ? null
        : IndexRcmdTopicCardVO.fromJson(
            json['topicCard'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GuessLikeItemToJson(GuessLikeItem instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'itemCard': instance.itemCard?.toJson(),
      'topicCard': instance.topicCard?.toJson()
    };

IndexRcmdTopicCardVO _$IndexRcmdTopicCardVOFromJson(Map<String, dynamic> json) {
  return IndexRcmdTopicCardVO()
    ..id = json['id'] as String
    ..style = json['style'] as int
    ..picList = (json['picList'] as List)?.map((e) => e as String)?.toList()
    ..title = json['title'] as String
    ..subtitle = json['subtitle'] as String
    ..tagDesc = json['tagDesc'] as String
    ..schemeUrl = json['schemeUrl'] as String
    ..topicTypeDesc = json['topicTypeDesc'] as String
    ..avatar = json['avatar'] as String
    ..nickName = json['nickName'] as String
    ..readCountStr = json['readCountStr'] as String
    ..bgColor = json['bgColor'] as String
    ..from = json['from'] as String;
}

Map<String, dynamic> _$IndexRcmdTopicCardVOToJson(
        IndexRcmdTopicCardVO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'style': instance.style,
      'picList': instance.picList,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'tagDesc': instance.tagDesc,
      'schemeUrl': instance.schemeUrl,
      'topicTypeDesc': instance.topicTypeDesc,
      'avatar': instance.avatar,
      'nickName': instance.nickName,
      'readCountStr': instance.readCountStr,
      'bgColor': instance.bgColor,
      'from': instance.from
    };

IndexRcmdItemCardVO _$IndexRcmdItemCardVOFromJson(Map<String, dynamic> json) {
  return IndexRcmdItemCardVO()
    ..id = json['id'] as String
    ..schemeUrl = json['schemeUrl'] as String
    ..primaryPicUrl = json['primaryPicUrl'] as String
    ..name = json['name'] as String
    ..showRetailPrice = json['showRetailPrice'] as String
    ..showOriginPrice = json['showOriginPrice'] as String
    ..itemTagList = (json['itemTagList'] as List)
        ?.map((e) =>
            e == null ? null : ItemTagVO.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..couponTag = json['couponTag'] as String
    ..simpleDesc = json['simpleDesc'] as String
    ..promLogo = json['promLogo'] == null
        ? null
        : BigPromLogoVO.fromJson(json['promLogo'] as Map<String, dynamic>)
    ..promBanner = json['promBanner'] == null
        ? null
        : BigPromBannerVO.fromJson(json['promBanner'] as Map<String, dynamic>)
    ..highLightWord = json['highLightWord'] as String
    ..productPlace = json['productPlace'] as String
    ..specification = json['specification'] as String
    ..promDesc = json['promDesc'] as String;
}

Map<String, dynamic> _$IndexRcmdItemCardVOToJson(
        IndexRcmdItemCardVO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schemeUrl': instance.schemeUrl,
      'primaryPicUrl': instance.primaryPicUrl,
      'name': instance.name,
      'showRetailPrice': instance.showRetailPrice,
      'showOriginPrice': instance.showOriginPrice,
      'itemTagList': instance.itemTagList?.map((e) => e?.toJson())?.toList(),
      'couponTag': instance.couponTag,
      'simpleDesc': instance.simpleDesc,
      'promLogo': instance.promLogo?.toJson(),
      'promBanner': instance.promBanner?.toJson(),
      'highLightWord': instance.highLightWord,
      'productPlace': instance.productPlace,
      'specification': instance.specification,
      'promDesc': instance.promDesc
    };

BigPromBannerVO _$BigPromBannerVOFromJson(Map<String, dynamic> json) {
  return BigPromBannerVO()
    ..valid = json['valid'] as bool
    ..promoTitle = json['promoTitle'] as String
    ..promoSubTitle = json['promoSubTitle'] as String
    ..content = json['content'] as String
    ..bannerTitleUrl = json['bannerTitleUrl'] as String
    ..bannerContentUrl = json['bannerContentUrl'] as String
    ..styleType = json['styleType'] as int
    ..usualContent = (json['usualContent'] as List)
        ?.map((e) => e == null
            ? null
            : ComplexTextVO.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..timeType = json['timeType'] as int
    ..iconUrl = json['iconUrl'] as String;
}

Map<String, dynamic> _$BigPromBannerVOToJson(BigPromBannerVO instance) =>
    <String, dynamic>{
      'valid': instance.valid,
      'promoTitle': instance.promoTitle,
      'promoSubTitle': instance.promoSubTitle,
      'content': instance.content,
      'bannerTitleUrl': instance.bannerTitleUrl,
      'bannerContentUrl': instance.bannerContentUrl,
      'styleType': instance.styleType,
      'usualContent': instance.usualContent?.map((e) => e?.toJson())?.toList(),
      'timeType': instance.timeType,
      'iconUrl': instance.iconUrl
    };

BigPromLogoVO _$BigPromLogoVOFromJson(Map<String, dynamic> json) {
  return BigPromLogoVO()
    ..logoUrl = json['logoUrl'] as String
    ..width = json['width'] as int
    ..height = json['height'] as int;
}

Map<String, dynamic> _$BigPromLogoVOToJson(BigPromLogoVO instance) =>
    <String, dynamic>{
      'logoUrl': instance.logoUrl,
      'width': instance.width,
      'height': instance.height
    };

ItemTagVO _$ItemTagVOFromJson(Map<String, dynamic> json) {
  return ItemTagVO()
    ..type = json['type'] as int
    ..name = json['name'] as String;
}

Map<String, dynamic> _$ItemTagVOToJson(ItemTagVO instance) =>
    <String, dynamic>{'type': instance.type, 'name': instance.name};
