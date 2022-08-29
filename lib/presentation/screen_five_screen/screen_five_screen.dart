import 'controller/screen_five_controller.dart';
import 'package:cannymobile/core/app_export.dart';
import 'package:cannymobile/widgets/custom_button.dart';
import 'package:cannymobile/widgets/custom_icon_button.dart';
import 'package:cannymobile/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:cannymobile/core/utils/file_upload_helper.dart';
import 'package:cannymobile/data/models/upload/post_upload_req.dart';
import 'package:cannymobile/data/models/create/post_create_req.dart';
import 'package:cannymobile/core/constants/apiKeys.dart';
import 'package:cannymobile/data/models/create/post_create_req.dart';

class ScreenFiveScreen extends GetWidget<ScreenFiveController> {
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
                                              margin: getMargin(left: 8))
                                        ])
                                  ]))),
                      Padding(
                          padding: getPadding(left: 16, top: 16, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 4, top: 2, bottom: 2),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgLightbulb,
                                        height: getVerticalSize(15.00),
                                        width: getHorizontalSize(11.00))),
                                Padding(
                                    padding:
                                        getPadding(left: 8, top: 3, bottom: 2),
                                    child: Text(
                                        "lbl_feature_request".tr.toUpperCase(),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterSemiBold14
                                            .copyWith(height: 1.00)))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          margin: getMargin(top: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 16, top: 27, right: 16),
                          child: Text("lbl_create_a_post".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium18
                                  .copyWith(height: 1.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(70.00),
                              width: getHorizontalSize(396.00),
                              margin: getMargin(left: 16, top: 22, right: 16),
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                right: 10, bottom: 10),
                                            child: Text("lbl_title".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold14Gray500
                                                    .copyWith(height: 1.00)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                              Padding(
                                                  padding:
                                                      getPadding(right: 10),
                                                  child: Text("lbl_title".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold14Gray500
                                                          .copyWith(
                                                              height: 1.00))),
                                              CustomTextFormField(
                                                  width: 396,
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .groupThirtyController,
                                                  hintText:
                                                      "msg_short_descript".tr,
                                                  margin: getMargin(top: 11))
                                            ])))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 16, top: 18, right: 16),
                          child: Text("lbl_details".tr.toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold14Gray500
                                  .copyWith(height: 1.00))),
                      CustomTextFormField(
                          width: 396,
                          focusNode: FocusNode(),
                          controller: controller.anyadditionalController,
                          hintText: "lbl_details2".tr,
                          margin: getMargin(left: 16, top: 16, right: 16),
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgEdit)),
                          suffixConstraints: BoxConstraints(
                              minWidth: getHorizontalSize(16.00),
                              minHeight: getVerticalSize(16.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 16, top: 16, right: 16, bottom: 428),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        shape: IconButtonShape.RoundedBorder5,
                                        onTap: () {
                                          onTapBtntf();
                                        },
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgLaptop)),
                                    CustomButton(
                                        width: 120,
                                        text:
                                            "lbl_create_post".tr.toUpperCase(),
                                        shape: ButtonShape.RoundedBorder5,
                                        onTap: onTapBtnCreatepost)
                                  ])))
                    ]))))));
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
  void onTapBtnCreatepost() {
    PostCreateReq postCreateReq = PostCreateReq(
      title: controller.groupThirtyController.text,
      details: controller.anyadditionalController.text,
      apiKey: ApiKeys.apikey,
      authorID: ApiKeys.authorid,
      boardID: ApiKeys.boardid,
    );
    controller.callCreateCreate(
      postCreateReq.toJson(),
      successCall: _onCreateCreateSuccess,
      errCall: _onCreateCreateError,
    );
  }

  void _onCreateCreateSuccess() {
    Get.offAllNamed(AppRoutes.screenOneScreen);
    Get.offAllNamed(AppRoutes.screenOneScreen);
  }

  void _onCreateCreateError() {}
}
