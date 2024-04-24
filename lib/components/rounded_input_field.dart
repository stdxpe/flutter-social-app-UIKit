import 'package:flutter/material.dart';
import 'package:social_media_demo_app/components/textfield_container.dart';

class RoundedInputField extends StatelessWidget {
  final Icon icon;
  final String hintText;
  final Function onChanged;

  const RoundedInputField({Key key, this.icon, this.hintText, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          border: InputBorder.none,
          icon: icon,
        ),
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.black, fontSize: 16),
        textAlign: TextAlign.start,
      ),
    );
  }
}
