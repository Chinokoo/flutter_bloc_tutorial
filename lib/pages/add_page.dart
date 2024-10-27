import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app_with_bloc/cubit/todo_cubit.dart';
import 'package:to_do_app_with_bloc/main.dart';

class AddToDoPage extends StatefulWidget {
  const AddToDoPage({super.key});

  @override
  State<AddToDoPage> createState() => _AddToDoPageState();
}

class _AddToDoPageState extends State<AddToDoPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            const Text('Add To-Do'),
            TextField(
              controller: titleController,
              decoration: const InputDecoration(hintText: 'Enter a ToDo'),
            ),
            MaterialButton(
              onPressed: () {
                //or use BlocProvider.of<TodoCubit>(context).addTodo(titleController.text.trim());
                context.read<TodoCubit>().addTodo(titleController.text.trim());
              },
              child: const Text("add todo"),
            )
          ],
        ),
      ),
    );
  }
}
