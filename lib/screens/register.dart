import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt2022/constants.dart';
import 'package:gt2022/customWidgets.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNoController = TextEditingController();
  final TextEditingController _securityPinController = TextEditingController();
  bool _passwordVisible = true;

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
                "Welcome,",
                style: screenHeading,
              ),
              SizedBox(height: 8 * heightRatio),
              Text(
                "Create your account and get started",
                style: normalText1,
              ),
              SizedBox(height: 60 * heightRatio),
              CustomTextField(
                heightRatio: heightRatio,
                fieldText: _nameController,
                label: "Full Name",
                inputType: TextInputType.name,
              ),
              SizedBox(
                height: heightRatio * 16,
              ),
              CustomTextField(
                inputType: TextInputType.emailAddress,
                heightRatio: heightRatio,
                fieldText: _emailController,
                label: "Email Address",
              ),
              SizedBox(
                height: heightRatio * 16,
              ),
              CustomTextField(
                inputType: TextInputType.number,
                heightRatio: heightRatio,
                fieldText: _phoneNoController,
                label: "Phone Number",
              ),
              SizedBox(
                height: heightRatio * 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
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
                      textCapitalization: TextCapitalization.words,
                      onChanged: (value) => _passwordController,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: heightRatio * 16,
              ),
              CustomTextField(
                inputType: TextInputType.number,
                heightRatio: heightRatio,
                fieldText: _securityPinController,
                label: "Security Pin (4 digits)",
              ),
              SizedBox(height: 60 * heightRatio),
              NaviagtionButton(
                widthRatio: widthRatio,
                destinationRoute: "/phoneVerification",
                text: "Continue",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
