import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt2022/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneNoController = TextEditingController();
  TextEditingController _securityPinController = TextEditingController();
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
                        color: primaryBlue),
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
              Center(
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [secondaryBlue, primaryBlue])),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/phoneVerification");
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Continue",
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: 4 * widthRatio),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.heightRatio,
    required this.fieldText,
    required this.label,
    required this.inputType,
  }) : super(key: key);

  final double heightRatio;
  final TextEditingController fieldText;
  final String label;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.montserrat(
              fontSize: 16, fontWeight: FontWeight.w700, color: primaryBlue),
        ),
        SizedBox(height: 16 * heightRatio),
        SizedBox(
          height: heightRatio * 45,
          child: TextFormField(
            style: GoogleFonts.montserrat(fontSize: 16),
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            ),
            controller: fieldText,
            textCapitalization: TextCapitalization.words,
            onChanged: (value) => fieldText,
          ),
        ),
      ],
    );
  }
}
