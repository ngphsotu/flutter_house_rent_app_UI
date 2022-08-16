import 'package:flutter/material.dart';

import '/screen/home/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: const Color(0xFFF5F6F6),
        primaryColor: const Color(0xFF811B83),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: const Color(0xFFFA5019)),
        textTheme: TextTheme(
          headline1: const TextStyle(color: Color(0xFF100E34)),
          bodyText1: TextStyle(color: const Color(0xFF100E34).withOpacity(0.5)),
        ),
      ),
      home: const HomePage(),
    );
  }
}
