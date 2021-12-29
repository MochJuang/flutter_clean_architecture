import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:new_flutter/presentation/dashboard/dashboard_page.dart';
import 'package:new_flutter/presentation/home/home.dart';

class Routes{
  static List<GetPage> getPage = [
    GetPage(name: HomePage.TAG, page: () => HomePage()),
    GetPage(name: DashboardPage.TAG, page: () => DashboardPage()),
  ];
}