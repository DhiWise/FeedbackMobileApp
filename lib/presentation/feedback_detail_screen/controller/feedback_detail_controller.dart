import '/core/app_export.dart';
import 'package:cannymobile/presentation/feedback_detail_screen/models/feedback_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:cannymobile/data/models/retrieve/post_retrieve_resp.dart';
import 'package:cannymobile/data/apiClient/api_client.dart';
import 'package:cannymobile/core/constants/apiKeys.dart';

class FeedbackDetailController extends GetxController {
  var id = Get.arguments[NavigationArgs.id];

  Rx<FeedbackDetailModel> screen4ModelObj = FeedbackDetailModel().obs;

  PostRetrieveResp postRetrieveResp = PostRetrieveResp();

  @override
  void onReady() {
    super.onReady();
    Map postRetrieveReq = {
      'apiKey': ApiKeys.apikey,
      'id': Get.arguments['id'].toString()
    };
    this.callCreateRetrieve(
      postRetrieveReq,
      successCall: _onCreateRetrieveSuccess,
      errCall: _onCreateRetrieveError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callCreateRetrieve(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createRetrieve(
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        onSuccess: (resp) {
          onCreateRetrieveSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateRetrieveError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateRetrieveSuccess(var response) {
    postRetrieveResp = PostRetrieveResp.fromJson(response);
  }

  void onCreateRetrieveError(var err) {
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

  void _onCreateRetrieveSuccess() {
    screen4ModelObj.value.testingCounterTxt.value =
        postRetrieveResp.title!.toString();
    screen4ModelObj.value.needtoimproveTxt.value =
        postRetrieveResp.details!.toString();
    screen4ModelObj.value.k1Txt.value = postRetrieveResp.score!.toString();
    screen4ModelObj.value.imageUrl.value = postRetrieveResp.imageURLs!.first;
  }

  void _onCreateRetrieveError() {}
}
