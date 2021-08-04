// stl
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        // 20 insets or 16
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // may cause over flow error
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextFormField(
              controller: emailController,
              onFieldSubmitted: (value) {
                print(value);
              },
              onChanged: (value) {
                print(value);
              },
              // Keyboard type
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                // hintText: "Email Address",
                labelText: "Email Address",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.email,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextFormField(
              controller: passwordController,
              onFieldSubmitted: (value) {
                print(value);
              },
              onChanged: (value) {
                print(value);
              },
              // Keyboard type
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.lock,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  print(emailController.text);
                  print(passwordController.text);
                },
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account?"
                ),
                TextButton(
                    onPressed: () {},
                    child: Text("Register Now") ,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
