import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

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
              fontSize: 12, fontWeight: FontWeight.w400, color: fontColor),
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

class NaviagtionButton extends StatelessWidget {
  const NaviagtionButton({
    Key? key,
    required this.widthRatio,
    required this.text,
    required this.destinationRoute,
  }) : super(key: key);

  final double widthRatio;
  final String text;
  final String destinationRoute;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [secondaryBlue, primaryBlue])),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(destinationRoute);
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
                text,
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
    );
  }
}

class PhoneVerificationFormField extends StatelessWidget {
  const PhoneVerificationFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            border: const UnderlineInputBorder(), fillColor: fieldGray),
        style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w700, fontSize: 24, color: Colors.black),
      ),
    );
  }
}
