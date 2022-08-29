import 'package:get/get.dart';
import 'package:cannymobile/data/models/selectionPopupModel/selection_popup_model.dart';
import 'screen_one_item_model.dart';

class ScreenOneModel {
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

  RxList<ScreenOneItemModel> screenOneItemList =
      RxList.filled(0, ScreenOneItemModel());
}
