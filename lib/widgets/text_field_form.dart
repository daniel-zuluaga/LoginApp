import 'package:flutter/material.dart';

class TextFieldGeneral extends StatelessWidget {

  final String labelText;
  final String? hintText;
  final Icon iconTextField;
  final Function onChanged;
  final TextInputType? keyBoardType;

  const TextFieldGeneral({ 
    required this.labelText, 
    required this.iconTextField, 
    required this.onChanged, 
    this.keyBoardType, 
    this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        textCapitalization: TextCapitalization.sentences,
        autocorrect: true,
        keyboardType: keyBoardType,
        decoration: InputDecoration(
          prefixIcon: iconTextField,
          labelText: labelText.toString(),
          hintText: hintText.toString()
        ),
        onChanged: (onChanged){},
        cursorHeight: 20 ,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black
        ),
      ),
    );
  }
}