import 'package:cannymobile/presentation/feedback_create_screen/feedback_create_screen.dart';
import 'package:cannymobile/presentation/feedback_create_screen/binding/feedback_create_binding.dart';
import 'package:cannymobile/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:cannymobile/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../presentation/feedback_detail_screen/binding/feedback_detail_binding.dart';
import '../presentation/feedback_detail_screen/feedback_detail_screen.dart';
import '../presentation/feedback_list_screen/binding/feedback_list_binding.dart';
import '../presentation/feedback_list_screen/feedback_list_screen.dart';

class AppRoutes {
  static String screenFourScreen = '/screen_four_screen';

  static String screenFiveScreen = '/screen_five_screen';

  static String screenOneScreen = '/screen_one_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: screenFourScreen,
      page: () => FeedbackDetailScreen(),
      bindings: [
        FeedbackDetailBinding(),
      ],
    ),
    GetPage(
      name: screenFiveScreen,
      page: () => FeedbackCreateScreen(),
      bindings: [
        FeedbackCreateBinding(),
      ],
    ),
    GetPage(
      name: screenOneScreen,
      page: () => FeedbackListScreen(),
      bindings: [
        FeedbackListBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => FeedbackListScreen(),
      bindings: [
        FeedbackListBinding(),
      ],
    )
  ];
}
