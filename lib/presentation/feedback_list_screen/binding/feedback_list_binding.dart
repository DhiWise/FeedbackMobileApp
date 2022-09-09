import '../controller/feedback_list_controller.dart';
import 'package:get/get.dart';

class FeedbackListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeedbackListController());
  }
}
