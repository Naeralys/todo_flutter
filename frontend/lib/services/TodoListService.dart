import 'package:todo/models/TodoItem.dart';
import 'package:todo/services/NetworkService.dart';

class TodoListService {
  Future<List<TodoItem>> getAllTodos() => 
  NetworkService().get(endpoint: 'TodoList')
  .then((data) => convertToTodoItem(data));

  void addTodo(TodoItem todo) =>
  NetworkService().post(endpoint: 'TodoList', body: todo.name);

  convertToTodoItem(dynamic data) {
    List<TodoItem> result = [];
    data.forEach((todo) => result.add(TodoItem(todo['name'])));
    return result;
  }
}