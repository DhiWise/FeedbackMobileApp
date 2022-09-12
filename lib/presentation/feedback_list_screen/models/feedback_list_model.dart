import 'package:get/get.dart';
import 'feedback_list_item_model.dart';

class FeedbackListModel {
  RxList<FeedbackListItemModel> feedbackItemList =
      RxList.filled(0, FeedbackListItemModel());
}
