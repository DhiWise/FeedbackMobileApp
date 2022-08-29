import '../screen_one_screen/widgets/screen_one_item_widget.dart';
import 'controller/screen_one_controller.dart';
import 'models/screen_one_item_model.dart';
import 'package:cannymobile/core/app_export.dart';
import 'package:cannymobile/widgets/custom_button.dart';
import 'package:cannymobile/widgets/custom_drop_down.dart';
import 'package:cannymobile/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ScreenOneScreen extends GetWidget<ScreenOneController> {
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
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowdown)),
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
                      Padding(
                          padding: getPadding(left: 16, top: 16, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CommonImageView(
                                    svgPath: ImageConstant.imgLightbulb,
                                    height: getSize(20.00),
                                    width: getSize(20.00)),
                                Padding(
                                    padding: getPadding(left: 4),
                                    child: Text(
                                        "lbl_feature_request".tr.toUpperCase(),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterSemiBold14
                                            .copyWith(height: 1.43)))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          margin: getMargin(top: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 15, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 7, bottom: 6),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 5),
                                                  child: Text("lbl_showing".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium16
                                                          .copyWith(
                                                              height: 1.38))),
                                              Container(
                                                  margin: getMargin(left: 16),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomDropDown(
                                                            width: 88,
                                                            focusNode:
                                                                FocusNode(),
                                                            icon: Container(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            7),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowdown)),
                                                            hintText:
                                                                "lbl_trending"
                                                                    .tr,
                                                            margin: getMargin(
                                                                left: 4,
                                                                right: 7),
                                                            alignment: Alignment
                                                                .center,
                                                            items: controller
                                                                .screenOneModelObj
                                                                .value
                                                                .dropdownItemList,
                                                            onChanged: (value) {
                                                              controller
                                                                  .onSelected(
                                                                      value);
                                                            }),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    100.00),
                                                            margin: getMargin(
                                                                top: 4),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    ColorConstant
                                                                        .gray300))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16, bottom: 5),
                                                  child: Text("lbl_posts".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium16
                                                          .copyWith(
                                                              height: 1.38)))
                                            ])),
                                    CommonImageView(
                                        svgPath: ImageConstant.imgSearch,
                                        height: getSize(40.00),
                                        width: getSize(40.00))
                                  ]))),
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
                                    ScreenOneItemModel model = controller
                                        .screenOneModelObj
                                        .value
                                        .screenOneItemList[index];
                                    return ScreenOneItemWidget(model);
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
