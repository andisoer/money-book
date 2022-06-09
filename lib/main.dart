import 'package:flutter/material.dart';
import 'package:money_book/features/home/presentation/page/home_page.dart';
import 'package:money_book/routes.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      onGenerateRoute: AppRoutes().onGenerateRoute,
    );
  }
}
