    import 'package:get/get.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import 'routes.dart';
import '../modules/schooldetails/schooldetails_binding.dart';
import '../modules/schooldetails/schooldetails_view.dart';
import 'routes.dart';

class AppPages {
  static final routes = [
    
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  
    GetPage(
      name: Routes.SCHOOLDETAILS,
      page: () => const SchoolDetailsView(),
      binding: SchoolDetailsBinding(),
    ),
   ];
}
