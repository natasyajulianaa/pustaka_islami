import 'package:flutter/material.dart';
import 'package:slicing/login.dart';
import 'package:google_fonts/google_fonts.dart';

class Landing2Page extends StatelessWidget {
  const Landing2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 100.0),
              Container(
                child: Image.asset(
                  'assets/images/bacabuku.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Hallo,',
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(22, 39, 66, 1),
                    fontWeight: FontWeight.w800,
                    fontSize: 28.0,
                  ),
                ),
              ),
              SizedBox(height: 1.0),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Selamat datang',
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(22, 39, 66, 1),
                    fontWeight: FontWeight.w800,
                    fontSize: 28.0,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(  
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim. ',
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(112, 113, 114, 1),
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Container(
                  width: 300.0,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'Mulai',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(68, 26, 122, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 140.0),
                  child: Row(children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 2.0,
                      ),
                    ),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
