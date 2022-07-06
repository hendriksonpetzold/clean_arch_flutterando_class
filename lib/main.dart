import 'package:clean_arch/my_app.dart';
import 'package:clean_arch/post_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(ModularApp(module: PostModule(), child: const MyApp()));
}
