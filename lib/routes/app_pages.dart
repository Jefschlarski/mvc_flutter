import 'package:flutter/material.dart';
import 'package:flutter_mvc/app/views/home_page.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;
  static final routes = [
    GetPage(
      name: Routes.HOME, page: () => HomePage(), // binding: InitialBinding
    )
  ];
}
