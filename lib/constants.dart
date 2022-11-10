import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

final TextStyle normalText1 = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black);

final TextStyle normalText2 = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400, fontSize: 14, color: fontColor);

final TextStyle screenHeading = GoogleFonts.montserrat(
    fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black);

final Color primaryBlue = HexColor("#024EC5");
final Color secondaryBlue = HexColor("#01A8F8");
final Color grey2 = HexColor("bcbec0");
final Color grey3 = HexColor("#e6e7e8");
final Color links = HexColor("#3FA2F7");
final Color success = HexColor("56C568");
final Color error = HexColor("#EB5757");
final Color warning = HexColor("#FFC400");
final backgroundColor = HexColor("#FBB040");
final Color grey1 = HexColor("#333333");
final Color tertiaryBlue = HexColor("#01A8F8");
final Color fieldGray = HexColor("#868686");
final Color fontColor = HexColor("#1E1E1E");
final Color funkyYellow = HexColor("#DBA720");

EdgeInsetsGeometry screenPadding(double heightRatio, double widthRatio) =>
    EdgeInsets.only(
        top: (40 * heightRatio),
        left: (24 * widthRatio),
        right: (24 * widthRatio));
