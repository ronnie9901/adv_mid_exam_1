import 'dart:async';

import 'package:adv_mid_exam_1/Screen/view/HomePage.dart';
import 'package:flutter/material.dart';

class Splacescrremn extends StatelessWidget {
  const Splacescrremn({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
    return Scaffold(

      body: Container(height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(fit:BoxFit.cover,image: NetworkImage(
            'https://cdn.quotesgram.com/small/49/29/317638811-laughter-sparkles-like-a-splash-of-water-in-sunlight-quote-1.jpg'))),),
    );
  }
}
