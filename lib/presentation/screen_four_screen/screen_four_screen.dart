import 'controller/screen_four_controller.dart';
import 'package:cannymobile/core/app_export.dart';
import 'package:cannymobile/widgets/custom_button.dart';
import 'package:cannymobile/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ScreenFourScreen extends GetWidget<ScreenFourController> {
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
                      Padding(
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
                                                  left: 12, top: 8, right: 12),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgPolygon1,
                                                  height:
                                                      getVerticalSize(10.00),
                                                  width: getHorizontalSize(
                                                      20.00))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 12,
                                                  top: 4,
                                                  right: 12,
                                                  bottom: 8),
                                              child: Obx(() => Text(
                                                  controller.screen4ModelObj
                                                      .value.k1Txt.value,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtInterMedium16
                                                      .copyWith(height: 1.38))))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 13, bottom: 13),
                                    child: Obx(() => Text(
                                        controller.screen4ModelObj.value
                                            .testingCounterTxt.value,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium18
                                            .copyWith(height: 1.44))))
                              ])),
                      Container(
                          height: getVerticalSize(61.00),
                          width: getHorizontalSize(219.00),
                          margin: getMargin(left: 16, top: 24, right: 16),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding:
                                            getPadding(right: 10, bottom: 10),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgClock,
                                                  height: getSize(40.00),
                                                  width: getSize(40.00)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 20,
                                                      top: 9,
                                                      bottom: 9),
                                                  child: Text("lbl_dhiwise".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold14
                                                          .copyWith(
                                                              height: 1.57)))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                        padding: getPadding(left: 10, top: 10),
                                        child: Obx(() => Text(
                                            controller.screen4ModelObj.value
                                                .needtoimproveTxt.value,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium14
                                                .copyWith(height: 1.57)))))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 52, top: 16, right: 52),
                              child: Obx(() => controller.screen4ModelObj.value
                                          .imageUrl.value !=
                                      ""
                                  ? Image.network(controller
                                      .screen4ModelObj.value.imageUrl.value)
                                  : Container()))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 8, right: 16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    // GestureDetector(
                                    //     onTap: () {
                                    //       onTapTxtEditpost();
                                    //     },
                                    //     child: Padding(
                                    //         padding: getPadding(left: 39),
                                    //         child: Text(
                                    //             "lbl_edit_post".tr +
                                    //                 " Add Comment",
                                    //             overflow: TextOverflow.ellipsis,
                                    //             textAlign: TextAlign.left,
                                    //             style: AppStyle.txtInterMedium16
                                    //                 .copyWith(height: 1.50)))),
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 16, top: 110, right: 16, bottom: 20),
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

  onTapTxtEditpost() {
    Get.offNamed(AppRoutes.screenTwoScreen,
        arguments: {NavigationArgs.id: controller.id});
  }
}
