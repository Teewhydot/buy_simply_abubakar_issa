import 'package:buysimply_project_abubakarissa/features/fe_interview_task/presentation/screens/fe_interview_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: const FeInterviewTask(),
      ),
    );
  }
}
