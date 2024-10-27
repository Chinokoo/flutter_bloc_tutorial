import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app_with_bloc/cubit/todo_cubit.dart';
import 'package:to_do_app_with_bloc/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(),
      child: const MaterialApp(
        home: Scaffold(body: HomePage()),
      ),
    );
  }
}
