import 'package:get/get.dart';
import 'package:cannymobile/data/models/selectionPopupModel/selection_popup_model.dart';
import 'feedback_list_item_model.dart';

class FeedbackListModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "test",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "test1",
    ),
    SelectionPopupModel(
      id: 3,
      title: "test2",
    )
  ].obs;

  RxList<FeedbackListItemModel> screenOneItemList =
      RxList.filled(0, FeedbackListItemModel());
}
