import 'package:flutter/widgets.dart';
import 'package:zcfluter/GuessLikePage.dart';
import 'package:zcfluter/HomePage.dart';
import 'package:zcfluter/TestPageC.dart';

class Routes {
  static const GUESS_LIKE_PAGE = '/GuessLike';
  static const TEST_PROGRESS_INDICATOR = '/c';
  static const Map<String, WidgetBuilder> routes = {
    '/a': home,
    TEST_PROGRESS_INDICATOR: testPageC,
    GUESS_LIKE_PAGE: guessLike,
  };

  static Widget home(BuildContext ctx) => MyHomePage(title: 'AA');

  static Widget testPageC(BuildContext ctx) => TestPageC();

  static Widget guessLike(BuildContext ctx) => GuessLike();
}
