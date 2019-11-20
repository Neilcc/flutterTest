import 'dart:convert';

import 'package:zcfluter/datas/GuessLikeItem.dart';

class HttpHelper {
  static const DATA_CARD = "{\n" +
      "      \"itemCard\": {\n" +
      "        \"itemTagList\": [\n" +
      "          \n" +
      "        ],\n" +
      "        \"primaryPicUrl\": \"https://yanxuan-item.nosdn.127.net/a0b97d663f6a8b1557c38e0d96df57a5.png\",\n" +
      "        \"simpleDesc\": \"干净素色圆领，青春感无限\",\n" +
      "        \"name\": \"男式精梳棉圆领短袖T恤衫\",\n" +
      "        \"schemeUrl\": \"yanxuan://commoditydetails?commodityid=3408049\",\n" +
      "        \"productPlace\": \"\",\n" +
      "        \"specification\": \"8色可选\",\n" +
      "        \"showRetailPrice\": \"¥49\",\n" +
      "        \"highLightWord\": \"爆款\"\n" +
      "      },\n" +
      "      \"type\": 1\n" +
      "    }";

  static const DATA_TOPIC = "{\n" +
      "      \"topicCard\": {\n" +
      "        \"bgColor\": \"#F6B06A\",\n" +
      "        \"nickName\": \"选妹\",\n" +
      "        \"picList\": [\n" +
      "          \"https://yanxuan.nosdn.127.net/cb1e4435af55807ca5c850100171b5c0.png\",\n" +
      "          \"https://yanxuan.nosdn.127.net/a7e0dc7f2f852362c168d6bcfa42c32b.png\",\n" +
      "          \"https://yanxuan.nosdn.127.net/a53e51fda21075a79b07b84166f5052f.png\",\n" +
      "          \"https://yanxuan.nosdn.127.net/b6ae2a02499acca5b0f9513925f01f91.png\"\n" +
      "        ],\n" +
      "        \"subtitle\": \"意趣穿搭5折起\",\n" +
      "        \"topicTypeDesc\": \"严选推荐\",\n" +
      "        \"schemeUrl\": \"yanxuan://subject?subjecturl=https%3A%2F%2Fm.you.163.com%2Ftopic%2Fv1%2Fpub%2FKXL0pWrcDs.html\",\n" +
      "        \"readCountStr\": \"2460人看过\",\n" +
      "        \"style\": 2,\n" +
      "        \"avatar\": \"https://yanxuan.nosdn.127.net/d79b294dde3662f001b0efc286417a14.png\",\n" +
      "        \"title\": \"是甜蜜的水蜜桃girl，还是治愈系牛油果boy？不妨来一场穿搭猜想~\"\n" +
      "      },\n" +
      "      \"type\": 2\n" +
      "    }";

  static Future<List<GuessLikeItem>> loadGuessLike() async {
    List<GuessLikeItem> ret = new List<GuessLikeItem>();
    for (int i = 0; i < 100; i++) {
      if (i % 3 == 0) {
        ret.add(GuessLikeItem.fromJson(await json.decode(DATA_TOPIC)));
      } else {
        ret.add(GuessLikeItem.fromJson(await json.decode(DATA_CARD)));
      }
    }
    return ret;
  }
}
