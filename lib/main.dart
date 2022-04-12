import 'package:classroom_assignment/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 66, 123, 229),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
