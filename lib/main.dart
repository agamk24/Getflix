import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getflix/app/util/dependency.dart';
import 'package:getflix/presentation/get/binding/home_binding.dart';

import 'presentation/ui/page/home_page.dart';

void main() async {
  initAppService();
  runApp(const MyApp());
}

initAppService() async {
  DependencyCreator.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const HomePage(),
      initialBinding: HomeBinding(),
      initialRoute: "/",
    );
  }
}
