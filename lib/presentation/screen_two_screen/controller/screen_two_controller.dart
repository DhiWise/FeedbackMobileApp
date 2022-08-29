import '../../../core/constants/apiKeys.dart';
import '../../../data/models/create/post_create_resp.dart';
import '../../../data/models/list/post_list_resp.dart';
import '../../../data/models/retrieve/post_retrieve_resp.dart';
import '../../screen_three_screen/models/screen_three_model.dart';
import '/core/app_export.dart';
import 'package:cannymobile/presentation/screen_two_screen/models/screen_two_model.dart';
import 'package:flutter/material.dart';
import 'package:cannymobile/data/models/upload/post_upload_resp.dart';
import 'package:cannymobile/data/apiClient/api_client.dart';
import 'package:cannymobile/data/models/upload/post_upload_resp.dart';

class ScreenTwoController extends GetxController {
  var id = Get.arguments[NavigationArgs.id];

  TextEditingController commentTestingController = TextEditingController();

  Rx<ScreenTwoModel> screen2ModelObj = ScreenTwoModel().obs;
  Rx<ScreenThreeModel> screen3ModelObj = ScreenThreeModel().obs;

  PostUploadResp postUploadResp = PostUploadResp();
  PostRetrieveResp postRetrieveResp = PostRetrieveResp();
  PostCreateResp postCreateResp = PostCreateResp();
  PostListResp postListResp = PostListResp();

  @override
  void onReady() async {
    super.onReady();
//     await PermissionManager.askForPermission(Permission.camera);
//     await PermissionManager.askForPermission(Permission.storage);
//     List<String?>? imageList = [];
// //TODO: Permission - use imageList for using selected images
//     await FileManager().showModelSheetForImage(getImages: (value) async {
//       imageList = value;
//     });

    String id = Get.arguments['id'].toString();

    Map postRetrieveReq = {'apiKey': ApiKeys.apikey, 'id': id};
    this.callCreateRetrieve(
      postRetrieveReq,
      successCall: _onCreateRetrieveSuccess,
      errCall: _onCreateRetrieveError,
    );
    Map postListReq = {'apiKey': ApiKeys.apikey, 'postID': id};
    this.callCreateList(
      postListReq,
      successCall: _onCreateListSuccess,
      errCall: _onCreateListError,
    );
  }

  @override
  void onClose() {
    super.onClose();
    commentTestingController.dispose();
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
    screen2ModelObj.value.testingCounterTxt.value =
        postRetrieveResp.title!.toString();
    screen2ModelObj.value.needtoimproveTxt.value =
        postRetrieveResp.details!.toString();
    screen2ModelObj.value.k1Txt.value = postRetrieveResp.score!.toString();
    screen2ModelObj.value.imageUrl.value = postRetrieveResp.imageURLs!.first;
  }

  void _onCreateRetrieveError() {}

  void callCreateCreate(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createComment(
        headers: {
          'Content-type': 'application/x-www-form-urlencoded',
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

  void _onCreateListSuccess() {
    Get.find<PrefUtils>().setComments(postListResp.comments!);
    screen3ModelObj.value.value.value = postListResp.comments!.first!.value!;
    screen3ModelObj.value.imageUrl.value =
        postListResp.comments!.first!.imageURLs!.first;
  }

  void _onCreateListError() {}
}
