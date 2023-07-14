import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLabel extends StatelessWidget {
  String? labelText;
  TextLabel({
    Key? key,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14),
      child: Text(
        labelText!,
        style: GoogleFonts.ptSerifCaption(
            fontSize: 14, fontWeight: FontWeight.w400),
      ),
    );
  }
}
