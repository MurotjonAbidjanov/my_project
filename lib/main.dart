import 'package:flutter/material.dart';

import 'package:my_project/verification1.dart';

void main() {
  runApp(Main());
}
class Main extends StatelessWidget {
const Main({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Verification1(),
    );
  }
}