import 'package:flutter/material.dart';
import 'package:gt2022/customWidgets.dart';
import 'package:gt2022/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LSBody(),
    );
  }
}

class LSBody extends StatefulWidget {
  const LSBody({super.key});

  @override
  State<LSBody> createState() => _LSBodyState();
}

class _LSBodyState extends State<LSBody> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible = false;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    double widthRatio = MediaQuery.of(context).size.width / 375;
    double heightRatio = (MediaQuery.of(context).size.height / 900);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
            top: 70 * heightRatio,
            left: 24 * widthRatio,
            right: 24 * widthRatio),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Hi Cassandra,",
                    style: screenHeading,
                  ),
                  const CircleAvatar(
                    radius: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 8 * heightRatio,
              ),
              Text(
                "Login into your account",
                style: normalText1,
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: heightRatio * 75,
              ),
              CustomTextField(
                  heightRatio: heightRatio,
                  fieldText: _emailController,
                  label: "Email Address",
                  inputType: TextInputType.emailAddress),
              SizedBox(height: 16 * heightRatio),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  SizedBox(height: 16 * heightRatio),
                  SizedBox(
                    height: heightRatio * 45,
                    child: TextFormField(
                      obscureText: _passwordVisible,
                      style: GoogleFonts.montserrat(fontSize: 16),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off,
                            color: fieldGray,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      controller: _passwordController,
                      onChanged: (value) => _passwordController,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Remember me",
                        style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: fontColor),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _rememberMe = !_rememberMe;
                          });
                        },
                        icon: Icon(
                          _rememberMe
                              ? Icons.check_box_outlined
                              : Icons.check_box_outline_blank,
                          color: fieldGray,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password",
                        style: GoogleFonts.montserrat(
                            color: funkyYellow,
                            decoration: TextDecoration.underline),
                      ))
                ],
              ),
              SizedBox(height: heightRatio * 95),
              NaviagtionButton(
                widthRatio: widthRatio,
                text: "Login",
                destinationRoute: "/dashboard",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: fontColor),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/");
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          color: secondaryBlue),
                    ),
                  ),
                ],
              ),
              Center(
                child: IconButton(
                  iconSize: 50,
                  onPressed: () {},
                  icon: const Icon(Icons.fingerprint),
                ),
              ),
              Center(
                child: Text(
                  "Use Finger print/face id",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: secondaryBlue),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
