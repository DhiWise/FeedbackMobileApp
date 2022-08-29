import '../controller/screen_four_controller.dart';
import 'package:get/get.dart';

class ScreenFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenFourController());
  }
}
