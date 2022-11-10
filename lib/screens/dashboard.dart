import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt2022/constants.dart';
import 'package:gt2022/customWidgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DSBody(),
    );
  }
}

class DSBody extends StatefulWidget {
  const DSBody({super.key});

  @override
  State<DSBody> createState() => _DSBodyState();
}

class _DSBodyState extends State<DSBody> {
  @override
  Widget build(BuildContext context) {
    double widthRatio = MediaQuery.of(context).size.width / 375;
    double heightRatio = (MediaQuery.of(context).size.height / 812);
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: heightRatio * 366,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: heightRatio * 321,
                  color: primaryBlue,
                ),
                Positioned(
                  top: 50,
                  left: 24,
                  right: 24,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back,",
                        style: GoogleFonts.montserrat(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: heightRatio * 8,
                      ),
                      Text(
                        "Cassandra Onyenjen",
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white70),
                      ),
                      SizedBox(
                        height: heightRatio * 9,
                      ),
                      Container(
                        height: 65,
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Current rate",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: fontColor),
                            ),
                            SizedBox(
                              height: 8 * heightRatio,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/Nigeria.png"),
                                SizedBox(width: widthRatio * 12),
                                Text(
                                  "NGN 415",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      color: fontColor),
                                ),
                                SizedBox(
                                  width: 30 * widthRatio,
                                ),
                                // Image.asset("assets/images/arrows.png"),
                                SizedBox(width: widthRatio * 30),
                                Text(
                                  "\$1.00",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      color: fontColor),
                                ),
                                SizedBox(
                                  width: widthRatio * 12,
                                ),
                                Image.asset("assets/images/United States.png")
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: heightRatio * 23,
                      ),
                      Container(
                        height: 172 * heightRatio,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(224, 207, 161, 0.5),
                                HexColor("#E0CFA1")
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: const [0.0, 0.2]),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 30, right: 12, bottom: 28),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "GT2022 Virtual",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              Row(),
                              Row(),
                              Row(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
