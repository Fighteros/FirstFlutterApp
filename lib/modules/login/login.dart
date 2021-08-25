// stl
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/shared/components/components.dart';

class LoginScreenc extends StatefulWidget {
  @override
  _LoginScreencState createState() => _LoginScreencState();
}

class _LoginScreencState extends State<LoginScreenc> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

   bool isPassword = true;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        // 20 insets or 16
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                      controller: emailController,
                      label: "Email Address",
                      type: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'email address must not be empty';
                        }
                        return null;
                      },
                      prefixIcon: Icons.email),
                  SizedBox(
                    height: 15.0,
                  ),
                  defaultFormField(
                    onEyePress: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    isPassword: isPassword? true : false,
                    controller: passwordController,
                    label: "Password",
                    prefixIcon: Icons.lock,
                    suffixIcon: isPassword? Icons.visibility: Icons.visibility_off,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password must not be empty';
                      }
                      return null;
                    },
                    type: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: "log in",
                    function: () {
                      if (formKey.currentState!.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: "register",
                    function: () {},
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an Account?"),
                      TextButton(
                        onPressed: () {},
                        child: Text("Register Now"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
