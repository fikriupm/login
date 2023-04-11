import 'package:flutter/widgets.dart';

class DashboardTopCoursesModel{
  final String title;
  AssetImage image;
  final VoidCallback? onPress;

  DashboardTopCoursesModel(
    this.title,
    this.image,
    this.onPress
  );

  static List<DashboardTopCoursesModel> list = [
    DashboardTopCoursesModel("HTML Crash Course", 'assets/images/loading.png' as AssetImage, null),
    DashboardTopCoursesModel("Flutter Crash Course", 'assets/images/tria.png' as AssetImage, null),
    DashboardTopCoursesModel("Java Crash Course", 'assets/images/loading.png' as AssetImage, null),
    DashboardTopCoursesModel("Kotlin Crash Course", 'assets/images/loading.png' as AssetImage, null),
    DashboardTopCoursesModel("Phyton Crash Course", 'assets/images/loading.png' as AssetImage, null),

  ];

}