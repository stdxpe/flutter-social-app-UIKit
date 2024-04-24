import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function onPressed;

  const AlreadyHaveAnAccountCheck({Key key, this.login = true, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? 'Don\'t have an Account ?  ' : 'Already have an Account ?  ',
          style: TextStyle(color: Colors.white70, fontSize: 13),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            login ? 'Sign Up' : 'Sign In',
            style: TextStyle(
                color: Colors.white70,
                fontSize: 13,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
