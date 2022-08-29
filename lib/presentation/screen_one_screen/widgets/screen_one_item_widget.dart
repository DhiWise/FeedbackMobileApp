import '../controller/screen_one_controller.dart';
import '../models/screen_one_item_model.dart';
import 'package:cannymobile/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenOneItemWidget extends StatelessWidget {
  ScreenOneItemWidget(this.listpolygon1ItemModelObj);

  ScreenOneItemModel listpolygon1ItemModelObj;

  var controller = Get.find<ScreenOneController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowpolygon1!(listpolygon1ItemModelObj.id.value);
      },
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: getPadding(
            top: 12.0,
            bottom: 12.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 300,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: AppDecoration.outlineGray300.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 12,
                              top: 8,
                              right: 12,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgPolygon1,
                              height: getVerticalSize(
                                10.00,
                              ),
                              width: getHorizontalSize(
                                20.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 12,
                              top: 4,
                              right: 12,
                              bottom: 8,
                            ),
                            child: Obx(
                              () => Text(
                                listpolygon1ItemModelObj.k1Txt.value,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtInterMedium16.copyWith(
                                  height: 1.38,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      margin: getMargin(
                        left: 16,
                        top: 1,
                        bottom: 1,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              right: 10,
                            ),
                            child: Obx(
                              () => Text(
                                listpolygon1ItemModelObj
                                    .testingCounterTxt.value,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium16.copyWith(
                                  height: 1.38,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 8,
                            ),
                            child: Obx(
                              () => Text(
                                listpolygon1ItemModelObj.testingfinalTxt.value,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtInterMedium14Gray700.copyWith(
                                  height: 1.43,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  // left: 216,
                  top: 15,
                  right: 5,
                  bottom: 15,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 3,
                        bottom: 3,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgVector,
                        height: getVerticalSize(
                          14.00,
                        ),
                        width: getHorizontalSize(
                          15.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 9,
                      ),
                      child: Obx(
                        () => Text(
                          listpolygon1ItemModelObj.k0Txt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtInterMedium16.copyWith(
                            height: 1.38,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapRowpolygon1(String id) {
    Get.toNamed(AppRoutes.screenFourScreen, arguments: {NavigationArgs.id: id});
  }
}
