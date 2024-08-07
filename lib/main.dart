import 'package:adv_mid_exam_1/Screen/Provider/ExamProvider.dart';
import 'package:adv_mid_exam_1/Screen/view/HomePage.dart';
import 'package:adv_mid_exam_1/Screen/view/Splacescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ExamProvider(),)

      ],
      builder :  (context, child) =>  MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splacescrremn(),
    );
  }
}

