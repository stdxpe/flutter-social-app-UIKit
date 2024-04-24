import 'package:flutter/material.dart';
import 'package:social_media_demo_app/components/textfield_container.dart';
import 'package:social_media_demo_app/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final Icon icon;
  final String hintText;
  final Function onChanged;

  const RoundedPasswordField(
      {Key key, this.icon, this.hintText, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          border: InputBorder.none,
          icon: icon,
          suffixIcon: Icon(Icons.visibility, color: kPrimaryColor, size: 20),
        ),
        keyboardType: TextInputType.visiblePassword,
        style: TextStyle(color: Colors.black, fontSize: 16),
        textAlign: TextAlign.start,
      ),
    );
  }
}
