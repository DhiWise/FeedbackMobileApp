import '../controller/feedback_detail_controller.dart';
import 'package:get/get.dart';

class FeedbackDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeedbackDetailController());
  }
}
