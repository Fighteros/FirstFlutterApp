import 'package:flutter/cupertino.dart';

class DoneTasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Done Tasks",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
