import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoegame/buisness_layer/cubit/cubit.dart';
import 'package:tictactoegame/presentaion_layer/screens/login_screen.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context)=>AppCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen()
      ),
    );
  }
}

