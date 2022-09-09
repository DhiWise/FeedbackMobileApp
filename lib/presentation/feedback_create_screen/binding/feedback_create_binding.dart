import '../controller/feedback_create_controller.dart';
import 'package:get/get.dart';

class FeedbackCreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeedbackCreateController());
  }
}
