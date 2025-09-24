import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app/ui/cubit/anasayfa_cubit.dart';
import 'package:todo_app/ui/cubit/detaysayfa_cubit.dart';
import 'package:todo_app/ui/cubit/yapilacakkaydet_cubit.dart';
import 'package:todo_app/ui/views/anasayfa.dart';



void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => YapilacakkaydetCubit()),
        BlocProvider(create: (context) => AnasayfaCubit()),
        BlocProvider(create: (context) => Detaysayfa_Cubit()),
      ],
      child: MaterialApp(
        title: 'ToDo App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Anasayfa(),
      ),
    );
  }
}
