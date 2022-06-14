import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final textStyle = _TextStyles();
  static final colors = _Colors();
}

class _Colors {
  final baseColor = const Color(0xffffc857);
  final secondaryColor = const Color(0xffE9724C);
  final textPrimary = const Color(0xff481D24);
  final white = const Color(0xffffffff);
  final black = const Color(0xff000000);
  final grey = const Color(0xFF9E9E9E);
  final transparent = const Color(0x009E9E9E);
}

class _TextStyles {
  final f14TextPrimary = GoogleFonts.montserrat(
    fontSize: 14,
    letterSpacing: -0.5,
    color: AppTheme.colors.textPrimary,
  );

  final f14TextPrimaryW400 = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400,
    letterSpacing: -0.5,
    fontSize: 14,
    color: AppTheme.colors.textPrimary,
  );

  final f14TextPrimaryW600 = GoogleFonts.montserrat(
    fontWeight: FontWeight.w600,
    letterSpacing: -0.5,
    fontSize: 14,
    color: AppTheme.colors.textPrimary,
  );

  final f16TextPrimaryW400 = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400,
    letterSpacing: -0.5,
    fontSize: 16,
    color: AppTheme.colors.textPrimary,
  );

  final f16TextPrimaryW700 = GoogleFonts.montserrat(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    letterSpacing: -0.5,
    color: AppTheme.colors.textPrimary,
  );

  final f18TextPrimaryw700 = GoogleFonts.montserrat(
    fontWeight: FontWeight.w700,
    fontSize: 18,
    letterSpacing: -0.5,
    color: AppTheme.colors.textPrimary,
  );

  final f22TextPrimaryw700 = GoogleFonts.montserrat(
    fontWeight: FontWeight.w700,
    fontSize: 22,
    letterSpacing: -0.5,
    color: AppTheme.colors.textPrimary,
  );
}
