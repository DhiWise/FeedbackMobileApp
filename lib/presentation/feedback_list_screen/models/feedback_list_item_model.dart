import 'package:get/get.dart';

class FeedbackListItemModel {
  Rx<String> id = Rx('');

  Rx<String> upvoteCountTxt = Rx('');

  Rx<String> titleTxt = Rx('');

  Rx<String> detailTxt = Rx('');

  Rx<String> commentCountTxt = Rx('');
}
