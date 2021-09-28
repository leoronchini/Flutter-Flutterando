import 'package:api_project/src/models/todo_model.dart';
import 'package:api_project/src/repositories/todo_repository.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  List<TodoModel> todos = [];
  final TodoRepository _repository;
  final state = ValueNotifier<HomeState>(HomeState.start);

  HomeController(TodoRepository repository) : _repository = repository;

  Future start() async {
    state.value = HomeState.loading;
    try {
      todos = await _repository.fetchTodos();
      state.value = HomeState.success;
    } catch (e) {
      state.value = HomeState.error;
    }
  }
}

enum HomeState { start, loading, success, error }
