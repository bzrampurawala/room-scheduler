import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField({Key key, this.label, this.hint, this.isPass}) : super(key: key);

  String label;
  String hint;
  bool isPass;
  @override
  Widget build(BuildContext context) {
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
}
