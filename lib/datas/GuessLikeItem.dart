import 'package:json_annotation/json_annotation.dart';

import 'ComplexTextVO.dart';

part 'GuessLikeItem.g.dart';
//part 'IndexRcmdTopicCardVO.g.dart';
//part 'IndexRcmdItemCardVO.g.dart';
//part 'BigPromBannerVO.g.dart';
//part 'BigPromLogoVO.g.dart';
//part 'ItemTagVO.g.dart';

@JsonSerializable(explicitToJson: true)
class GuessLikeItem {

  static const TYPE_GOODS = 1;

  static const TYPE_TOPIC = 2;

  static const TYPE_PROM = 3;

  //卡片类型，1-商品卡片，2-专题卡片，3-活动卡片
  int type;

  //id，用于后续做分页使用，暂时没有作用
  String id;

  //商品卡片，当type=1时展示
  IndexRcmdItemCardVO itemCard;

  //专题卡片，当type=2时展示
  IndexRcmdTopicCardVO topicCard;

  factory GuessLikeItem.fromJson(Map<String, dynamic> json) =>
      _$GuessLikeItemFromJson(json);

  Map<String, dynamic> toJson() => _$GuessLikeItemToJson(this);

  GuessLikeItem();
}

@JsonSerializable(explicitToJson: true)
class IndexRcmdTopicCardVO {
  static const TYPE_ONE_GOODS = 1;
  static const TYPE_FOUR_GOODS = 2;
  static const TYPE_TWO_GOODS = 3;

  String id;
  int style;
  List<String> picList;

  String title;

  String subtitle;

  String tagDesc;

  String schemeUrl;
  String topicTypeDesc;
  String avatar;

  String nickName;

  String readCountStr;

  String bgColor;

  String from;

  IndexRcmdTopicCardVO();

  factory IndexRcmdTopicCardVO.fromJson(Map<String, dynamic> json) =>
      _$IndexRcmdTopicCardVOFromJson(json);

  Map<String, dynamic> toJson() => _$IndexRcmdTopicCardVOToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IndexRcmdItemCardVO {
  String id;
  String schemeUrl;
  String primaryPicUrl;
  String name;
  String showRetailPrice;
  String showOriginPrice;
  List<ItemTagVO> itemTagList;
  String couponTag;
  String simpleDesc;
  BigPromLogoVO promLogo;
  BigPromBannerVO promBanner;
  String highLightWord;
  String productPlace;
  String specification;
  String promDesc;

  IndexRcmdItemCardVO();

  factory IndexRcmdItemCardVO.fromJson(Map<String, dynamic> json) =>
      _$IndexRcmdItemCardVOFromJson(json);

  Map<String, dynamic> toJson() => _$IndexRcmdItemCardVOToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BigPromBannerVO {
  bool valid;

  String promoTitle;

  String promoSubTitle;

  String content;

  String bannerTitleUrl;

  String bannerContentUrl;

  int styleType;

  List<ComplexTextVO> usualContent;
  int timeType;

  String iconUrl;

  BigPromBannerVO();
  factory BigPromBannerVO.fromJson(Map<String, dynamic> json) =>
      _$BigPromBannerVOFromJson(json);

  Map<String, dynamic> toJson() => _$BigPromBannerVOToJson(this);

}


@JsonSerializable(explicitToJson: true)
class BigPromLogoVO {
  String logoUrl;
  int width;
  int height;

  BigPromLogoVO();
  factory BigPromLogoVO.fromJson(Map<String, dynamic> json) =>
      _$BigPromLogoVOFromJson(json);

  Map<String, dynamic> toJson() => _$BigPromLogoVOToJson(this);


}


@JsonSerializable(explicitToJson: true)
class ItemTagVO {
  int type;
  String name;

  ItemTagVO();
  factory ItemTagVO.fromJson(Map<String, dynamic> json) =>
      _$ItemTagVOFromJson(json);

  Map<String, dynamic> toJson() => _$ItemTagVOToJson(this);

}
