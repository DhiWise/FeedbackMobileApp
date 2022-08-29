import 'controller/screen_three_controller.dart';
import 'package:cannymobile/core/app_export.dart';
import 'package:cannymobile/widgets/custom_button.dart';
import 'package:cannymobile/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ScreenThreeScreen extends GetWidget<ScreenThreeController> {
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
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                        padding: getPadding(top: 9, bottom: 10),
                                        child: Text("lbl_dhiwise".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium20
                                                .copyWith(height: 1.00))),
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomIconButton(
                                              height: 40,
                                              width: 40,
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgEye)),
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
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 16, right: 16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 4, top: 2, bottom: 2),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgLightbulb,
                                            height: getVerticalSize(15.00),
                                            width: getHorizontalSize(11.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 8, top: 3, bottom: 2),
                                        child: Text(
                                            "lbl_feature_request"
                                                .tr
                                                .toUpperCase(),
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold14
                                                .copyWith(height: 1.00)))
                                  ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          margin: getMargin(top: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 15, right: 16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                        decoration: AppDecoration.outlineGray300
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 8,
                                                      right: 12),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgPolygon1,
                                                      height: getVerticalSize(
                                                          10.00),
                                                      width: getHorizontalSize(
                                                          20.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 7,
                                                      right: 12,
                                                      bottom: 10),
                                                  child: Text("lbl_1".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium16
                                                          .copyWith(
                                                              height: 1.00)))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 19, bottom: 13),
                                        child: Text("lbl_testing_1".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium18
                                                .copyWith(height: 1.00)))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 24, right: 16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CommonImageView(
                                        svgPath: ImageConstant.imgClock,
                                        height: getSize(40.00),
                                        width: getSize(40.00)),
                                    Padding(
                                        padding: getPadding(
                                            left: 20, top: 12, bottom: 13),
                                        child: Text("lbl_dhiwise".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold14
                                                .copyWith(height: 1.00)))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 76, top: 4, right: 76),
                              child: Text("msg_need_to_improve".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 52, top: 16, right: 52),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgScreenshotfrom,
                                  height: getVerticalSize(150.00),
                                  width: getHorizontalSize(300.00)))),
                      CustomButton(
                          width: 302,
                          text: "lbl_add_comment".tr,
                          margin: getMargin(left: 52, top: 33, right: 52),
                          onTap: onTapBtnAddcomment,
                          alignment: Alignment.centerRight),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 74, top: 31, right: 74),
                              child: Text("lbl_activity".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold14
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 27, right: 16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CommonImageView(
                                              svgPath: ImageConstant.imgClock,
                                              height: getSize(40.00),
                                              width: getSize(40.00)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 20,
                                                  top: 12,
                                                  bottom: 13),
                                              child: Text("lbl_dhiwise".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold14
                                                      .copyWith(height: 1.00)))
                                        ]),
                                    Padding(
                                        padding: getPadding(
                                            left: 226, top: 15, bottom: 15),
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgVectorGray500,
                                            height: getSize(9.00),
                                            width: getSize(9.00)))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 76, top: 4, right: 76),
                              child: Text("msg_need_to_improve".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(
                                  left: 52, top: 16, right: 52, bottom: 20),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgScreenshotfrom,
                                  height: getVerticalSize(150.00),
                                  width: getHorizontalSize(300.00))))
                    ]))))));
  }

  onTapBtnCreate() {
    Get.offAllNamed(AppRoutes.screenFiveScreen);
  }

  onTapBtnAddcomment() {
    Get.toNamed(AppRoutes.screenTwoScreen);
  }
}
