import 'package:ex_control_brightness/app/modules/module_app.dart';
import 'package:ex_control_brightness/app/modules/module_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}