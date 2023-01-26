import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

InputDecoration textFieldMainDecoration(String hintText, String labelText) {
  return InputDecoration(
    labelText: labelText,
    hintText: hintText,
    fillColor: Colors.white.withOpacity(0.2),
    filled: true,
    hintStyle: poppinsLogin2(AppColors.background),
    labelStyle: poppinsLogin2(AppColors.background),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: AppColors.background),
      borderRadius: BorderRadius.circular(15.0),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: Colors.red),
      borderRadius: BorderRadius.circular(15.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: AppColors.background),
      borderRadius: BorderRadius.circular(15.0),
    ),
  );
}

TextStyle poppinsLogin2(Color textColor) => GoogleFonts.poppins(
      fontSize: 15,
      color: textColor,
    );
