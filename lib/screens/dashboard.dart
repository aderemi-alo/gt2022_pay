import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt2022/constants.dart';
import 'package:gt2022/customWidgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                                Image.asset("assets/Nigeria.png"),
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
                                Image.asset("assets/arrows.png"),
                                SizedBox(width: widthRatio * 30),
                                Text(
                                  "USD 1.00",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      color: fontColor),
                                ),
                                SizedBox(
                                  width: widthRatio * 12,
                                ),
                                Image.asset("assets/United States.png")
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
                                const Color.fromRGBO(224, 207, 161, 0.5),
                                HexColor("#E0CFA1")
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: const [0.0, 0.2]),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 25, right: 20, bottom: 28),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "GT2022 Virtual",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                  Image.asset("assets/MastercardLogo.png")
                                ],
                              ),
                              SizedBox(height: heightRatio * 5),
                              Row(
                                children: [Image.asset("assets/chip.png")],
                              ),
                              SizedBox(height: heightRatio * 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("****", style: normalText2),
                                  Text("****", style: normalText2),
                                  Text("****", style: normalText2),
                                  Text("****", style: normalText2),
                                  Text("2014", style: normalText2),
                                ],
                              ),
                              SizedBox(height: heightRatio * 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Cassandra Onyenjen",
                                      style: normalText2),
                                  Text(
                                    "7/24",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: fontColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: heightRatio * 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                DashboardOption(
                  image: "assets/newPlan.png",
                  text: "Add new plan",
                ),
                DashboardOption(
                  image: "assets/subscription.png",
                  text: "Make Subscription",
                ),
                DashboardOption(
                  image: "assets/fundWallet.png",
                  text: "Fund Wallet",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 24),
            child: Text(
              "Upcoming Payment",
              style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: primaryBlue),
            ),
          ),
          SizedBox(
            height: heightRatio * 13,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Card(
              shadowColor: Color.fromRGBO(0, 0, 0, 0.14),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 19),
                child: Column(
                  children: [
                    PaymentDetails(
                      widthRatio: widthRatio,
                      logo: "assets/netflix.png",
                      paymentName: "Netflix",
                      daysLeft: 5,
                      amount: 3600,
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: const Color.fromRGBO(0, 0, 0, 0.1),
                    ),
                    PaymentDetails(
                      widthRatio: widthRatio,
                      logo: "assets/spotify.png",
                      paymentName: "Spotify",
                      daysLeft: 3,
                      amount: 4500,
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                    ),
                    PaymentDetails(
                        widthRatio: widthRatio,
                        logo: "assets/MTN.png",
                        paymentName: "Data Subscription",
                        daysLeft: 2,
                        amount: 10000)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/navBar.png"),
            ],
          )
        ],
      ),
    );
  }
}

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({
    Key? key,
    required this.widthRatio,
    required this.logo,
    required this.paymentName,
    required this.daysLeft,
    required this.amount,
  }) : super(key: key);

  final double widthRatio;
  final String logo;
  final String paymentName;
  final int daysLeft;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 12, right: 18, left: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(logo),
              SizedBox(width: 12 * widthRatio),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    paymentName,
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: fontColor),
                  ),
                  Text(
                    "$daysLeft days left",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: fontColor),
                  )
                ],
              )
            ],
          ),
          Text(
            "${getCurrency()}$amount",
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

String getCurrency() {
  var format = NumberFormat.simpleCurrency(name: 'NGN');
  return format.currencySymbol;
}

class DashboardOption extends StatelessWidget {
  const DashboardOption({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        const SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: GoogleFonts.montserrat(
              fontSize: 12, fontWeight: FontWeight.w400, color: fontColor),
        ),
      ],
    );
  }
}
