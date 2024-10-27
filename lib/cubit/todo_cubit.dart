import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app_with_bloc/models/todo_model.dart';

//the state management of the app is done using cubit
class TodoCubit extends Cubit<List<TodoModel>> {
  //the state of the cubit is a list of todo models
  TodoCubit() : super([]);

  //function to add a new todo model to the list
  void addTodo(String title) {
    final todo = TodoModel(title: title, createdAt: DateTime.now());

    state.add(todo);

    emit([...state]);
  }

  //on change function to track the changes in the list
  @override
  void onChange(Change<List<TodoModel>> change) {
    super.onChange(change);
    print(change);
  }
}
