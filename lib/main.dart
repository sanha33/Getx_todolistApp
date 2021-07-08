import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todolist_0707/screens/TodoScreen.dart';
import 'package:getx_todolist_0707/screens/HomeScreen.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));

}