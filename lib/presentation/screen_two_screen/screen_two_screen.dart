import 'controller/screen_two_controller.dart';
import 'package:cannymobile/core/app_export.dart';
import 'package:cannymobile/widgets/custom_button.dart';
import 'package:cannymobile/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:cannymobile/core/utils/file_upload_helper.dart';
import 'package:cannymobile/data/models/upload/post_upload_req.dart';
import 'package:cannymobile/data/models/upload/post_upload_req.dart';

class ScreenTwoScreen extends GetWidget<ScreenTwoController> {
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
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 52, top: 50, right: 52),
                              decoration: AppDecoration.outlineGray300.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: double.infinity,
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
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 13,
                                                          right: 16,
                                                          bottom: 8),
                                                      child: Text(
                                                          "lbl_comment_testing"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterMedium14
                                                              .copyWith(
                                                                  height:
                                                                      1.00))))
                                            ])),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(300.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300)),
                                    Container(
                                        height: getVerticalSize(100.00),
                                        width: getHorizontalSize(200.00),
                                        margin: getMargin(
                                            left: 16, top: 15, right: 16),
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgScreenshotfrom,
                                                      height: getVerticalSize(
                                                          100.00),
                                                      width: getHorizontalSize(
                                                          200.00))),
                                              CustomIconButton(
                                                  height: 16,
                                                  width: 16,
                                                  margin: getMargin(
                                                      left: 10,
                                                      top: 4,
                                                      right: 4,
                                                      bottom: 10),
                                                  variant: IconButtonVariant
                                                      .FillGray500,
                                                  shape: IconButtonShape
                                                      .CircleBorder8,
                                                  padding: IconButtonPadding
                                                      .PaddingAll4,
                                                  alignment: Alignment.topRight,
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgVectorBluegray900))
                                            ])),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(300.00),
                                        margin: getMargin(top: 16),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 16,
                                                top: 11,
                                                right: 16,
                                                bottom: 8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CustomIconButton(
                                                      height: 40,
                                                      width: 40,
                                                      margin: getMargin(
                                                          top: 2, bottom: 7),
                                                      shape: IconButtonShape
                                                          .RoundedBorder5,
                                                      onTap: () {
                                                        onTapBtntf();
                                                      },
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgCar)),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          90.00),
                                                      margin:
                                                          getMargin(left: 15),
                                                      child: Text(
                                                          "msg_the_post_author"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12
                                                              .copyWith(
                                                                  height:
                                                                      1.50))),
                                                  CustomButton(
                                                      width: 78,
                                                      text: "lbl_submit".tr,
                                                      margin: getMargin(
                                                          left: 44,
                                                          top: 2,
                                                          bottom: 7),
                                                      shape: ButtonShape
                                                          .RoundedBorder5,
                                                      onTap: onTapBtnSubmit)
                                                ])))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 16, top: 64, right: 16, bottom: 20),
                              child: Text("msg_powered_by_cann".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14Gray500
                                      .copyWith(height: 1.00))))
                    ]))))));
  }

  onTapBtnCreate() {
    Get.offAllNamed(AppRoutes.screenFiveScreen);
  }

  onTapBtntf() async {
    List<String?> fileList = [];
    await FileManager().showModelSheetForImage(
        maxFileSize: 5 * 1000,
        allowedExtensions: ["jpeg", "png"],
        getImages: (list) async {
          fileList = list;
        });

    final formData = FormData({});
    if (fileList.isNotEmpty) {
      for (var item in fileList) {
        formData.files.addAll([
          MapEntry(
            'file',
            MultipartFile(
              await File(item!).readAsBytes(),
              filename: item.split('/').last,
            ),
          ),
        ]);
      }
    }

    controller.callCreateUpload(
      formData,
      successCall: _onCreateUploadSuccess,
      errCall: _onCreateUploadError,
    );
  }

  void _onCreateUploadSuccess() {}
  void _onCreateUploadError() {}
  onTapBtnSubmit() {
    Get.offAllNamed(AppRoutes.screenThreeScreen);
  }
}
