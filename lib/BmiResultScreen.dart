import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;

  BMIResultScreen(this.result,this.age,this.isMale);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender: ${isMale}",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text("Result: ${result.round()}"),
            Text("Age: $age"),
          ],
        ),
      ),
    );
  }
}
