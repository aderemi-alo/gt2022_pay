import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt2022/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBlue,
        title: Row(
          children: [
            Text(
              "Login",
              style: appBarHeading,
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController email = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            //   Text(
            //     "GT2022",
            //     style: GoogleFonts.montserrat(
            //       fontWeight: FontWeight.w700,
            //       fontSize: 24,
            //       color: primaryBlue,
            //     ),
            //   ),

            Text(
              "Welcome, please enter your details",
              style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            Column(
              children: [
                Text(
                  "Email",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700, fontSize: 16),
                ),
                Container(
                  height: 40,
                  width: 300,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: fieldGray),
                      hintText: "anderson@gmail.com",
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: email,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
