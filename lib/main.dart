import 'package:flutter/material.dart';
import 'package:flutter_mvc/routes/app_pages.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'MVC APP',
    debugShowCheckedModeBanner: false,
    getPages: AppPages.routes,
  ));
}
