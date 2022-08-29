import '../controller/screen_two_controller.dart';
import 'package:get/get.dart';

class ScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenTwoController());
  }
}
