import 'package:flutter/material.dart';
import 'business_card.dart'; // የቢዝነስ ካርዱ ፋይል
//import 'counter_app.dart'; // የካውንተር አፑ ፋይል

void main() {
  runApp(const MyCardApp());
}

class MyCardApp extends StatelessWidget {
  const MyCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //1. የካውንተር አፑን ማየት ከፈለግሽ ይህንን አግብሪው፡
      //home: MyHomePage(title: 'Flutter Demo Home Page'),

      // 2. የቢዝነስ ካርዱን ማየት ስትፈልጊ ደግሞ ከላይ ያለውን አጥፍተሽ (comment አድርገሽ) ይህንን አግብሪው፡
      home: BusinessCardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
