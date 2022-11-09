import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt2022/constants.dart';
import 'package:hexcolor/hexcolor.dart';

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
  State<PVSBody> createState() => _BodyState();
}

class _BodyState extends State<PVSBody> {
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
            children: [
              Text('Verification'),
            ],
          ),
        ),
      ),
    );
  }
}
