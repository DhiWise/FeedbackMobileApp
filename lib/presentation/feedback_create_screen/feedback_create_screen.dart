import 'controller/feedback_create_controller.dart';
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

class FeedbackCreateScreen extends GetWidget<FeedbackCreateController> {
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(top: 9, bottom: 10),
                            child: Text(
                              "lbl_dhiwise".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium20
                                  .copyWith(height: 1.00),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomIconButton(
                                  height: 40,
                                  width: 40,
                                  margin: getMargin(left: 8),
                                  variant: IconButtonVariant.FillGray500,
                                  padding: IconButtonPadding.PaddingAll13,
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgCalculator)),
                              CustomButton(
                                  width: 102,
                                  text: "lbl_create".tr,
                                  margin: getMargin(left: 8))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      height: getVerticalSize(1.00),
                      width: size.width,
                      margin: getMargin(top: 16),
                      decoration: BoxDecoration(color: ColorConstant.gray300)),
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
                            alignment: Alignment.centerLeft,
                            child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(right: 10),
                                    child: Text(
                                      "lbl_title".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterSemiBold14Gray500
                                          .copyWith(height: 1.00),
                                    ),
                                  ),
                                  CustomTextFormField(
                                      width: 396,
                                      focusNode: FocusNode(),
                                      controller:
                                          controller.groupThirtyController,
                                      hintText: "msg_short_descript".tr,
                                      margin: getMargin(top: 11))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: getPadding(left: 16, top: 18, right: 16),
                      child: Text("lbl_details".tr,
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
                        child: CommonImageView(svgPath: ImageConstant.imgEdit)),
                    suffixConstraints: BoxConstraints(
                      minWidth: getHorizontalSize(16.00),
                      minHeight: getVerticalSize(16.00),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding:
                          getPadding(left: 16, top: 16, right: 16, bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(children: [
                            Text("Attach Media",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular12
                                    .copyWith(height: 1.00)),
                            CustomIconButton(
                                height: 40,
                                width: 40,
                                shape: IconButtonShape.RoundedBorder5,
                                onTap: () {
                                  onTapBtntf();
                                },
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgLaptop))
                          ]),
                          CustomButton(
                              width: 120,
                              text: "lbl_create_post".tr.toUpperCase(),
                              shape: ButtonShape.RoundedBorder5,
                              onTap: onTapBtnCreatePost)
                        ],
                      ),
                    ),
                  ),
                  Obx(
                    () => controller.imageFile.value.path.toString() == ""
                          ? Container()
                          : Container(
                        child: Image.file(controller.imageFile.value),
                        height: getVerticalSize(150.00),
                        width: getHorizontalSize(150.00),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapBtntf() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
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
        File image = File(item!);
        controller.imageFile.value = image;
        formData.files.addAll([
          MapEntry(
            'file',
            MultipartFile(
              await File(item).readAsBytes(),
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

  void onTapBtnCreatepost1() {
  }

  void onTapBtnCreatePost() {
    List<String> imageList = [];
    imageList.add(controller.imageFile.value.path);
    try {
      PostCreateReq postCreateReq = PostCreateReq(
          title: controller.groupThirtyController.text,
          details: controller.anyadditionalController.text,
          apiKey: ApiKeys.apiKey,
          authorID: ApiKeys.authorId,
          boardID: ApiKeys.boardId,
          imageURLs: [controller.postUploadResp.url.toString()]
          );

      controller.callCreateCreate(
        postCreateReq.toJson(),
        successCall: _onCreateCreateSuccess,
        errCall: _onCreateCreateError,
      );
    } catch (ex) {
    }
  }

  void _onCreateCreateSuccess() {
    Get.offAllNamed(AppRoutes.screenOneScreen);
  }

  void _onCreateCreateError() {}
}
