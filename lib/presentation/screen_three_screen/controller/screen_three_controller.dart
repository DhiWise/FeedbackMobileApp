import '/core/app_export.dart';
import 'package:cannymobile/presentation/screen_three_screen/models/screen_three_model.dart';
import 'package:flutter/material.dart';
import 'package:cannymobile/data/models/list/post_list_resp.dart';
import 'package:cannymobile/data/apiClient/api_client.dart';
import 'package:cannymobile/data/models/list/post_list_resp.dart';
import 'package:cannymobile/core/constants/apiKeys.dart';

class ScreenThreeController extends GetxController {
  Rx<ScreenThreeModel> screenThreeModelObj = ScreenThreeModel().obs;

  PostListResp postListResp = PostListResp();

  @override
  void onReady() {
    super.onReady();
    Map postListReq = {
      'apiKey': ApiKeys.apikey,
      'postID': ApiKeys.boardid,
    };
    this.callCreateList(
      postListReq,
      successCall: _onCreateListSuccess,
      errCall: _onCreateListError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callCreateList(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createList(
        headers: {
          'Content-type': 'application/x-www-form-urlencoded',
        },
        onSuccess: (resp) {
          onCreateListSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateListError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateListSuccess(var response) {
    postListResp = PostListResp.fromJson(response);
  }

  void onCreateListError(var err) {
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

  void _onCreateListSuccess() {}
  void _onCreateListError() {}
}
