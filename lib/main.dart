import 'package:api_calling_with_bloc/logic/cubits/post_cubit/post_cubit.dart';
import 'package:api_calling_with_bloc/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PostCubit(),
        child: MaterialApp(
          title: 'API Calling',
          theme: ThemeData(
            // tested with just a hot reload.
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: HomeScreen(),
        ));
  }
}
