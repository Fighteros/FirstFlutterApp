import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailOrPhoneController = TextEditingController();
  var passwordController = TextEditingController();

  bool isLoginBtnDisabled = true;

  var activeLoginBtn;

  var inActiveLoginBtn;

  @override
  void initState() {
    super.initState();
    activeLoginBtn = Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0), color: Colors.blue),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      height: 40.0,
      width: double.infinity,
      child: MaterialButton(
        onPressed: () => Navigator.pushReplacementNamed(context, "/home"),
        child: Text(
          "LOG IN",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13.0),
        ),
      ),
    );
    inActiveLoginBtn = Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0), color: Colors.grey[300]),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      height: 40.0,
      width: double.infinity,
      child: MaterialButton(
        onPressed: null,
        child: Text(
          "LOG IN",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13.0),
        ),
      ),
    );
    setState(() {
      passwordController.addListener(() {
        isLoginBtnDisabled = ((emailOrPhoneController.text.isEmpty &&
                    passwordController.text.isEmpty) ||
                (passwordController.text.isEmpty) ||
                (emailOrPhoneController.text.isEmpty))
            ? true
            : false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image(
                    image: NetworkImage(
                        'https://scontent.fcai20-4.fna.fbcdn.net/v/t39.8562-6/120009688_325579128711709_1736249742330805861_n.png?_nc_cat=1&ccb=1-5&_nc_sid=6825c5&_nc_ohc=fd1aRul3D5kAX83i55M&_nc_ht=scontent.fcai20-4.fna&oh=b10fa28e6a55b5c33f54dbd745469e32&oe=612962BD')),
              ),
              SizedBox(
                height: 35.0,
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {});
                },
                keyboardType: TextInputType.emailAddress,
                controller: emailOrPhoneController,
                decoration: InputDecoration(
                  hintText: "Phone Number or Email",
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                onChanged: (value) => {setState(() {})},
                controller: passwordController,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration.collapsed(
                  hintText: "Password",
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              // to convert hex colors to it's value in flutter
              // prefix it will 0xff
              // here is the Login Button place
              // login button
              if (isLoginBtnDisabled) inActiveLoginBtn else activeLoginBtn,
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.grey[200],
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  height: 40.0,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "CREATE NEW ACCOUNT",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.transparent),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                height: 30.0,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "FORGET PASSWORD",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
