import 'package:flutter/material.dart';
import 'package:flutter_application_1/paginas/home.page.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Westermann Portfolio',
      home: const HomePage(),
    );
  }
}
