import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonGeneral extends StatelessWidget {
  final String labelText;
  const ButtonGeneral({
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange[300],
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
      child: TextButton(
        onPressed: () {}, 
        child: Text(
          "$labelText",
          style: GoogleFonts.kaushanScript(
            textStyle: const TextStyle(
              fontSize: 40,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        )
      )
    );
  }
}