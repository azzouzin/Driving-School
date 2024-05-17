import 'package:get/get.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import 'routes.dart';
import 'routes.dart';
import '../modules/school/school_binding.dart';
import '../modules/school/school_view.dart';
import 'routes.dart';
import '../modules/chat/chat_binding.dart';
import '../modules/chat/chat_view.dart';
import 'routes.dart';
import '../modules/statspage/statspage_binding.dart';
import '../modules/statspage/statspage_view.dart';
import 'routes.dart';
import '../modules/test/test_binding.dart';
import '../modules/test/test_view.dart';
import 'routes.dart';
import '../modules/resigntonewschool/resigntonewschool_binding.dart';
import '../modules/resigntonewschool/resigntonewschool_view.dart';
import 'routes.dart';
import '../modules/carrepair/carrepair_binding.dart';
import '../modules/carrepair/carrepair_view.dart';
import 'routes.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/login_view.dart';
import 'routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.SCHOOL,
      page: () => const SchoolView(),
      binding: SchoolBinding(),
    ),
    GetPage(
      name: Routes.CHAT,
      page: () => const ChatPage(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: Routes.STATSPAGE,
      page: () => StatsPage(),
      binding: StatsPageBinding(),
    ),
    GetPage(
      name: Routes.TEST,
      page: () => TestView(),
      binding: TestBinding(),
    ),
    GetPage(
      name: Routes.RESIGNTONEWSCHOOL,
      page: () => const ResignToNewSchoolView(),
      binding: ResignToNewSchoolBinding(),
    ),
    GetPage(
      name: Routes.CARREPAIR,
      page: () => CarRepairView(),
      binding: CarRepairBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
