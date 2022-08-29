import 'package:cannymobile/presentation/screen_four_screen/screen_four_screen.dart';
import 'package:cannymobile/presentation/screen_four_screen/binding/screen_four_binding.dart';
import 'package:cannymobile/presentation/screen_three_screen/screen_three_screen.dart';
import 'package:cannymobile/presentation/screen_three_screen/binding/screen_three_binding.dart';
import 'package:cannymobile/presentation/screen_five_screen/screen_five_screen.dart';
import 'package:cannymobile/presentation/screen_five_screen/binding/screen_five_binding.dart';
import 'package:cannymobile/presentation/screen_one_screen/screen_one_screen.dart';
import 'package:cannymobile/presentation/screen_one_screen/binding/screen_one_binding.dart';
import 'package:cannymobile/presentation/screen_two_screen/screen_two_screen.dart';
import 'package:cannymobile/presentation/screen_two_screen/binding/screen_two_binding.dart';
import 'package:cannymobile/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:cannymobile/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String screenFourScreen = '/screen_four_screen';

  static String screenThreeScreen = '/screen_three_screen';

  static String screenFiveScreen = '/screen_five_screen';

  static String screenOneScreen = '/screen_one_screen';

  static String screenTwoScreen = '/screen_two_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: screenFourScreen,
      page: () => ScreenFourScreen(),
      bindings: [
        ScreenFourBinding(),
      ],
    ),
    GetPage(
      name: screenThreeScreen,
      page: () => ScreenThreeScreen(),
      bindings: [
        ScreenThreeBinding(),
      ],
    ),
    GetPage(
      name: screenFiveScreen,
      page: () => ScreenFiveScreen(),
      bindings: [
        ScreenFiveBinding(),
      ],
    ),
    GetPage(
      name: screenOneScreen,
      page: () => ScreenOneScreen(),
      bindings: [
        ScreenOneBinding(),
      ],
    ),
    GetPage(
      name: screenTwoScreen,
      page: () => ScreenTwoScreen(),
      bindings: [
        ScreenTwoBinding(),
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
      page: () => ScreenOneScreen(),
      bindings: [
        ScreenOneBinding(),
      ],
    )
  ];
}
