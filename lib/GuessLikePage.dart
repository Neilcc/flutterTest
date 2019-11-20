import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zcfluter/datas/GuessLikeItem.dart';
import 'package:zcfluter/network/HttpHelper.dart';

class GuessLike extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GuessLikeState();
}

class GuessLikeState extends State<GuessLike> {
  num count = 0;
  var itemList = List<GuessLikeItem>();

  void updateData(List<GuessLikeItem> items) {
    itemList.addAll(items);
    count = itemList.length ~/ 2;
  }

  @override
  void initState() {
    super.initState();
    HttpHelper.loadGuessLike().then((ret) => {
          setState(() => {updateData(ret)})
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('GuessLiken'),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int pos) => getItem(context, pos),
          itemCount: count,
        ));
  }

  Widget getWidget(GuessLikeItem item) {
    switch (item.type) {
      case 2:
        return getTopic(item);
      case 1:
        return getRcmdGoods(item.itemCard);
    }
    return null;
  }

  Widget getItem(BuildContext ctx, int pos) {
    GuessLikeItem item1 = itemList[pos];
    GuessLikeItem item2 = itemList[pos + 1];
    Widget w1 = Expanded(child: getWidget(item1));
    Widget w2 = Expanded(child: getWidget(item2));
    return Row(
      children: [w1, w2],
    );
  }

  Widget getRcmdGoods(IndexRcmdItemCardVO item) {
    return Column(
      children: [
        Image.network(item.primaryPicUrl, width: 100, height: 100),
        Text('${item.name}'),
        Text('${item.showRetailPrice}')
      ],
    );
  }

  Widget getTopic(GuessLikeItem item) {
    return Text('this is topic');
  }
}
