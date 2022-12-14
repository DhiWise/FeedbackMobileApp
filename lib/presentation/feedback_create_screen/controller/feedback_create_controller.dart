import 'dart:io';

import 'package:images_picker/images_picker.dart';

import '../models/feedback_create_model.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:cannymobile/data/models/upload/post_upload_resp.dart';
import 'package:cannymobile/data/apiClient/api_client.dart';
import 'package:cannymobile/data/models/create/post_create_resp.dart';
import 'package:cannymobile/data/models/create/post_create_resp.dart';

class FeedbackCreateController extends GetxController {
  TextEditingController groupThirtyController = TextEditingController();

  TextEditingController anyadditionalController = TextEditingController();

  Rx<FeedbackCreateModel> feebackCreateModelObj = FeedbackCreateModel().obs;

  Rx<File> imageFile = File("").obs;


  PostUploadResp postUploadResp = PostUploadResp();

  PostCreateResp postCreateResp = PostCreateResp();

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupThirtyController.dispose();
    anyadditionalController.dispose();
  }

  void callCreateUpload(FormData formData,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createUpload(
        onSuccess: (resp) {
          onCreateUploadSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateUploadError(err);
          if (errCall != null) {
            errCall();
          }
        },
        formData: formData);
  }

 /* void callCreateUpload(FormData formData,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createUpload(
        headers: {
          'Content-type': 'multipart/form-data',
        },
        onSuccess: (resp) {
          onCreateUploadSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateUploadError(err);
          if (errCall != null) {
            errCall();
          }
        },
        formData: formData);
  }
*/
  void onCreateUploadSuccess(var response) {

    postUploadResp = PostUploadResp.fromJson(response);

  }

  void onCreateUploadError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void callCreateCreate(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createCreate(
        headers: {
          'Content-type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateCreateSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateCreateError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateCreateSuccess(var response) {
    postCreateResp = PostCreateResp.fromJson(response);
  }

  void onCreateCreateError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }
}
