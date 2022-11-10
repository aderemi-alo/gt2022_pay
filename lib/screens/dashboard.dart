import 'package:flutter/material.dart';
import 'package:gt2022/constants.dart';
import 'package:gt2022/customWidgets.dart';

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
    double heightRatio = (MediaQuery.of(context).size.height / 900);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: heightRatio * 321,
              child: Stack(),
            )
          ],
        ),
      ),
    );
  }
}
