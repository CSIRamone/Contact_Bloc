
import 'package:contact_bloc/features/bloc_example/bloc/example_bloc.dart';
import 'package:contact_bloc/features/bloc_example/bloc_example.dart';
import 'package:contact_bloc/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      title: 'Flutter Bloc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/home': (_) => const HomePage(),
        '/bloc/example': (_) => BlocProvider(
          create: (_) => ExampleBloc()..add(ExampleFindNameEvent(name: '')),
          child: const BlocExamplePage(),
        ),
     //   '/bloc/example/contact': (context) => const BlocExample(),
      //  '/bloc/example/freezed': (context) => const BlocExample(),
      //  '/bloc/example/cubit': (context) => const BlocExample(),
      }, 
    );
  }
}


  