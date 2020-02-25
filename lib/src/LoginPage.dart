import 'package:flutter/material.dart';
import 'package:room_scheduler/utils/MyButton.dart';
import 'package:room_scheduler/utils/Logo.dart';

class LoginPage extends StatelessWidget {
  Widget textFeild(
      BuildContext context, String label, String hint, bool isPass) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: TextField(
          obscureText: isPass,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(fontSize: 20),
            hintText: hint,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          textFeild(context, "email", "example.com", false),
          SizedBox(
            height: 20,
          ),
          textFeild(context, "password", "password", true),
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
