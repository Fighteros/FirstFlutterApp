import 'package:flutter/cupertino.dart';

class ArchivedTasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Archived Tasks",
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
