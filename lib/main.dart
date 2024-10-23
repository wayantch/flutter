import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tampilan/bloc/auth/auth_bloc.dart';
import 'package:tampilan/homepage.dart';
import 'package:tampilan/pages/login.dart';
import 'package:tampilan/visibility.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home:MultiBlocProvider(
        providers: [
          BlocProvider<visibilityCubit>(
            create: (context) => visibilityCubit(),
          ),
          BlocProvider(create: (context) => AuthBloc()
          ),
        ],
        child: LoginPage(), 
      ),
    );
  }
}
