import '../controller/screen_five_controller.dart';
import 'package:get/get.dart';

class ScreenFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenFiveController());
  }
}
