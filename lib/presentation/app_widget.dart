import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:new_flutter/presentation/home/home.dart';
import 'package:new_flutter/router/routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      getPages: Routes.getPage,
      theme: ThemeData(primarySwatch: Colors.blue),
      home : HomePage()
    );
  }
}