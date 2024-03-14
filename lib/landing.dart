import 'package:flutter/material.dart';
import 'package:slicing/landing2.dart';


class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Landing2Page()),
            );
          },
          child: Image.asset('assets/images/logo.png', height: 280.0, width: 290.0),
        ),
      ),
    );
  }
}
