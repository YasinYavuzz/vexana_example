// Vexana, EasyLocalization, JsonSerialization
// bu üç paketin kullanımı ile alakalı bir örnek proje oluşturacağım.

import 'package:flutter/material.dart';
import 'package:vexana_flutter_example/feature/todo/view/todo_view.dart';

void main(){
  runApp(const MyWidget());
} 

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodoView(),
    );
  }
}


