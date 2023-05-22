import 'package:test/test.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';

void main() {
  final repository = TodoRepository();

  test('should return a list of todo model', () async {
    final list = await repository.fetchTodos();
    expect(list[1].title, "quis ut nam facilis et officia qui");
  });
}