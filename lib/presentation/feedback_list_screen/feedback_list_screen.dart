import 'package:cannymobile/presentation/feedback_list_screen/widgets/feedback_list_widget.dart';
import 'controller/feedback_list_controller.dart';
import 'models/feedback_list_item_model.dart';
import 'package:cannymobile/core/app_export.dart';
import 'package:cannymobile/widgets/custom_button.dart';
import 'package:cannymobile/widgets/custom_drop_down.dart';
import 'package:cannymobile/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class FeedbackListScreen extends GetWidget<FeedbackListController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: size.width,
                              margin: getMargin(left: 16, top: 24, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 6, bottom: 6),
                                        child: Text("lbl_dhiwise".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium20
                                                .copyWith(height: 1.40))),
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomIconButton(
                                              height: 40,
                                              width: 40,
                                              margin: getMargin(left: 8),
                                              variant:
                                                  IconButtonVariant.FillGray500,
                                              padding: IconButtonPadding
                                                  .PaddingAll13,
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgCalculator)),
                                          CustomButton(
                                              width: 102,
                                              text: "lbl_create".tr,
                                              margin: getMargin(left: 8),
                                              onTap: onTapBtnCreate)
                                        ])
                                  ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          margin: getMargin(top: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 24, right: 16),
                              child: Obx(() => ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.screenOneModelObj.value
                                      .screenOneItemList.length,
                                  itemBuilder: (context, index) {
                                    FeedbackListItemModel model = controller
                                        .screenOneModelObj
                                        .value
                                        .screenOneItemList[index];
                                    return FeedbackListItemWidget(model);
                                  })))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 16, top: 50, right: 16, bottom: 20),
                              child: Text("msg_powered_by_cann".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14Gray500
                                      .copyWith(height: 1.43))))
                    ]))))));
  }

  onTapBtnCreate() {
    Get.toNamed(AppRoutes.screenFiveScreen);
  }
}
