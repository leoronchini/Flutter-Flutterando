import 'package:api_project/src/controllers/home_controller.dart';
import 'package:api_project/src/models/todo_model.dart';
import 'package:flutter_test/flutter_test.dart';

class TodoRepositoryMock extends Mock implements TodoRepository;

main() {
  final repository = TodoRepositoryMock();
  final controller = HomeController();
  test("deve preencher variavel todos", () async {
    when(repository.fetchTodos()).thenAnswer((_) async => [TodoModel()]);
    expect(controller.state, HomeState.start);
    await controller.start();
    expect(controller.state, HomeState.success);
    expect(controller.todos.isNotEmpty, true);


  });

    test("deve modificar o estado para error se a requisicao falhar", () async {
    when(repository.fetchTodos()).thenThrow(Exception());
    expect(controller.state, HomeState.start);
    await controller.start();
    expect(controller.todos.isNotEmpty, true);


  });
}

when(fetchTodos) {
}
