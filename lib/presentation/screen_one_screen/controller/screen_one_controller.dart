import '/core/app_export.dart';
import 'package:cannymobile/presentation/screen_one_screen/models/screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:cannymobile/data/models/postsList/post_posts_list_resp.dart';
import 'package:cannymobile/data/apiClient/api_client.dart';
import 'package:cannymobile/data/models/postsList/post_posts_list_resp.dart';
import 'package:cannymobile/core/constants/apiKeys.dart';
import '../models/screen_one_item_model.dart';

class ScreenOneController extends GetxController {
  Rx<ScreenOneModel> screenOneModelObj = ScreenOneModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  PostPostsListResp postPostsListResp = PostPostsListResp();

  @override
  void onReady() {
    super.onReady();
    Map postPostsListReq = {
      'apiKey': ApiKeys.apikey,
      'id': ApiKeys.boardid,
    };
    this.callCreatePostsList(
      postPostsListReq,
      successCall: _onCreatePostsListSuccess,
      errCall: _onCreatePostsListError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    screenOneModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    screenOneModelObj.value.dropdownItemList.refresh();
  }

  void callCreatePostsList(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createPostsList(
        headers: {
          'Content-type': 'application/x-www-form-urlencoded',
        },
        onSuccess: (resp) {
          onCreatePostsListSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreatePostsListError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreatePostsListSuccess(var response) {
    postPostsListResp = PostPostsListResp.fromJson(response);
  }

  void onCreatePostsListError(var err) {
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

  void _onCreatePostsListSuccess() {
    List<ScreenOneItemModel> screenOneItemModelList = [];
    if (postPostsListResp!.posts! != null &&
        postPostsListResp!.posts!.isNotEmpty) {
      for (var element in postPostsListResp!.posts!) {
        var screenOneItemModel = ScreenOneItemModel();
        screenOneItemModel.id.value = element.id!.toString();
        screenOneItemModel.testingCounterTxt.value = element.title!.toString();
        screenOneItemModel.testingfinalTxt.value = element.details!.toString();
        screenOneItemModel.k1Txt.value = element.score!.toString();
        screenOneItemModel.k0Txt.value = element.commentCount!.toString();
        screenOneItemModelList.add(screenOneItemModel);
      }
    }
    screenOneModelObj.value.screenOneItemList.value = screenOneItemModelList;
  }

  void _onCreatePostsListError() {}
}
