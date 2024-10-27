import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app_with_bloc/cubit/todo_cubit.dart';
import 'package:to_do_app_with_bloc/models/todo_model.dart';
import 'package:to_do_app_with_bloc/pages/add_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do App"),
      ),
      body: BlocBuilder<TodoCubit, List<TodoModel>>(builder: (context, todos) {
        return ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            final todo = todos[index];
            return ListTile(
              title: Text(todo.title),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AddToDoPage())),
        child: const Icon(Icons.add),
      ),
    );
  }
}
