import 'package:flutter/material.dart';
import 'package:room_scheduler/utils/Colors.dart';
import 'package:room_scheduler/utils/MyButton.dart';
import 'package:room_scheduler/utils/Logo.dart';
import 'package:room_scheduler/utils/CustomEditText.dart';

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
        backgroundColor: RoomSchedulerColors().orange(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Logo(),
          CustomEditText(
              label: "email", hint: "user@example.com", isPass: false),
          SizedBox(
            height: 20,
          ),
          CustomEditText(label: "password", hint: "password", isPass: true),
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
