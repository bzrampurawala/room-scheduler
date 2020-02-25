import 'package:flutter/material.dart';
import 'package:room_scheduler/utils/MyButton.dart';
import 'package:room_scheduler/utils/Logo.dart';
import 'package:room_scheduler/utils/MyTextField.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Login/Register",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffF49E4C),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Logo(),
          MyTextField(label: "email", hint: "user@example.com", isPass: false),
          SizedBox(
            height: 20,
          ),
          MyTextField(label: "password", hint: "password", isPass: true),
          SizedBox(
            height: 50,
          ),
          MyButton(
            onTap: () {
              Navigator.pushNamed(context, '/dashboard');
            },
          ),
        ],
      ),
    );
  }
}
