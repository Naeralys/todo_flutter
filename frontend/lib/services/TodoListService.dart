import 'package:todo/models/TodoItem.dart';
import 'package:todo/services/NetworkService.dart';

class TodoListService {
  Future<List<TodoItem>> getAllTodos() => 
  NetworkService().get(endpoint: 'TodoList')
  .then((data) => convertToTodoItem(data));

  void addTodo(TodoItem todo) =>
  NetworkService().post(endpoint: 'TodoList', body: { "id": todo.id, "name": todo.name });

  void removeTodo(TodoItem todo) =>
  NetworkService().delete(endpoint: 'TodoList/${todo.id}');

  convertToTodoItem(dynamic data) {
    List<TodoItem> result = [];
    data.forEach((todo) => result.add(TodoItem(todo['id'], todo['name'])));
    return result;
  }
}