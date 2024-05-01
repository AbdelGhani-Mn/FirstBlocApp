import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_pixel/bloc/counter_bloc.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>CounterBloc(),
    child: const MaterialApp(
      
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    ),
    );
  }
}

