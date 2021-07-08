import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx_todolist_0707/models/Todo.dart';
import 'package:get_storage/get_storage.dart';

class TodoController extends GetxController{

  var todos= <Todo>[].obs;

  @override
  void onInit() {
    List? storedTodos = GetStorage().read<List>('todos');

    if(!storedTodos.isNull){
      todos= storedTodos!.map((e) => Todo.fromJson(e)).toList().obs;
    }
    // TODO: implement onInit
    ever(todos,(_){
      GetStorage().write('todos', todos.toList());
    });
    super.onInit();
  }

}