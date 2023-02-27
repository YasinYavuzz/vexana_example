import 'package:flutter/material.dart';
import 'package:vexana_flutter_example/feature/todo/viewModel/cubit/todo_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
          create: (context) => TodoCubit(),
          child: BlocConsumer<TodoCubit, TodoState>(
            builder: (context, state) {
              return context.read<TodoCubit>().isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount : context.read<TodoCubit>().model?.length ?? 0,
                      itemBuilder: (context, index) {
                        return const ListTile(
                          title: Text(
                              //context.read<TodoCubit>().model?[index].title ??
                                  ""),
                        );
                      },
                    );
            },
            listener: (context, state) {},
          )),
    );
  }
}
