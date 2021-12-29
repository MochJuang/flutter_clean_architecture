import 'package:flutter/material.dart';
import 'package:new_flutter/injectable.dart';
import 'package:new_flutter/presentation/app_widget.dart';
import 'package:new_flutter/presentation/home/home.dart';

void main() {
  configureDependencies();
  runApp(AppWidget());
}
