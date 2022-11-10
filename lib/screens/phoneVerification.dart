import 'package:flutter/material.dart';
import 'package:gt2022/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:gt2022/customWidgets.dart';

class PhoneVerificationScreen extends StatelessWidget {
  const PhoneVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PVSBody(),
    );
  }
}

class PVSBody extends StatefulWidget {
  const PVSBody({super.key});

  @override
  State<PVSBody> createState() => _PVSBodyState();
}

class _PVSBodyState extends State<PVSBody> {
  @override
  Widget build(BuildContext context) {
    double widthRatio = MediaQuery.of(context).size.width / 375;
    double heightRatio = (MediaQuery.of(context).size.height / 900);
    return SafeArea(
      child: SingleChildScrollView(
        padding: screenPadding(heightRatio, widthRatio),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Account Verification",
              style: screenHeading,
            ),
            SizedBox(height: 8 * heightRatio),
            Text(
              "Please enter the 4 digit verification code sent to 0801-***-1419",
              style: normalText1,
            ),
            SizedBox(height: 60 * heightRatio),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                PhoneVerificationFormField(),
                PhoneVerificationFormField(),
                PhoneVerificationFormField(),
                PhoneVerificationFormField(),
              ],
            ),
            SizedBox(
              height: heightRatio * 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Expires in ",
                  style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  "3:00",
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: HexColor("#DBA720")),
                ),
              ],
            ),
            SizedBox(
              height: heightRatio * 113,
            ),
            NaviagtionButton(
                widthRatio: widthRatio,
                text: "Continue",
                destinationRoute: "/login")
          ],
        ),
      ),
    );
  }
}
