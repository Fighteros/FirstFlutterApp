import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

// generic State
class _CounterScreenState extends State<CounterScreen> {
  int num = 1;

  // calls
  // 1. constructor
  //2. init state
  //3. build
  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter") ,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    num--;
                  });
                },
                child: Text(
              "MINUS"
            )),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0
              ),
              child: Text(
                "${num}",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 50.0
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    num++;
                  });
                },
                child: Text(
                    "PLUS"
                )),
          ],
        ),
      ),
    );
  }
}
