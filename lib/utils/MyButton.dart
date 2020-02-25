import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  var onTap;

  MyButton({Key key, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: this.onTap,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffF49E4C)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
              child: Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
