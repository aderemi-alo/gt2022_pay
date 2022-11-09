import 'package:flutter/material.dart';
import 'package:gt2022/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneVerificationScreen extends StatelessWidget {
  const PhoneVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      child: Padding(
        padding: EdgeInsets.only(
          top: (40 * heightRatio),
          left: (24 * widthRatio),
          right: (24 * widthRatio),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account Verification",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: primaryBlue),
              ),
              SizedBox(height: 8 * heightRatio),
              Text(
                "Create your account and get started",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: primaryBlue),
              ),
              SizedBox(height: 60 * heightRatio),
            ],
          ),
        ),
      ),
    );
  }
}
