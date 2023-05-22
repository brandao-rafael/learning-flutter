 // @dart=2.9
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';

class DioMock extends Mock implements Dio {}

const mockedReturn = '''[{
  "userId": 1,
  "id": 1,
  "title": "delectus aut autem",
  "completed": false
},
{
  "userId": 1,
  "id": 2,
  "title": "quis ut nam facilis et officia qui",
  "completed": false
},
{
  "userId": 1,
  "id": 3,
  "title": "fugiat veniam minus",
  "completed": false
},
{
  "userId": 1,
  "id": 4,
  "title": "et porro tempora",
  "completed": true
}]''';

void main() {
  final dio = DioMock();
  final repository = TodoRepository(dio);

  test('should return a list of todo model', () async {
    when(dio.get('https://jsonplaceholder.typicode.com/todos')).thenAnswer(
  (_) async => Response(
    data: jsonDecode(mockedReturn),
    requestOptions: RequestOptions(path: '/'),
  ),
);
    final list = await repository.fetchTodos();
    expect(list[1].title, "quis ut nam facilis et officia qui");
  });
}
