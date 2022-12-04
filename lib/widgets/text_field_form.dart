import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldGeneral extends StatelessWidget {

  final String labelText;
  final String? hintText;
  final Icon iconTextField;
  final Function onChanged;
  final TextInputType? keyBoardType;
  
  const TextFieldGeneral({
    super.key,  
    required this.labelText, 
    required this.iconTextField, 
    required this.onChanged, 
    this.keyBoardType, 
    this.hintText, 
  });

  @override
  Widget build(BuildContext context) {
    var obscureText;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
    child: TextField(
      textCapitalization: TextCapitalization.sentences,
      keyboardType: keyBoardType,
      decoration: InputDecoration(
        prefixIcon: iconTextField,
        labelText: labelText.toString(),
        hintText: hintText.toString()
      ),
      onChanged: (onChanged){},
      cursorHeight: 25,
      style: GoogleFonts.kaushanScript(
          textStyle: const TextStyle(
            fontSize: 23,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),
        ),
      ),
    );
  }
}

class TextFieldPassword extends StatelessWidget {

  final String labelText;
  final Icon iconTextField;
  final Function onChanged;
  final TextInputType? keyBoardType;

  const TextFieldPassword({
    super.key,  
    required this.labelText, 
    required this.iconTextField, 
    required this.onChanged, 
    this.keyBoardType, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        obscureText: true,
        keyboardType: keyBoardType,
        decoration: InputDecoration(
          prefixIcon: iconTextField,
          labelText: labelText.toString(),
        ),
        onChanged: (onChanged){},
        cursorHeight: 25 ,
        style: GoogleFonts.kaushanScript(
          textStyle: const TextStyle(
            fontSize: 23,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),
        ),
      ),
    );
  }
}