import 'package:flutter/material.dart';
import 'package:slicing/signup.dart';
import 'package:slicing/forgot.dart';
import 'package:slicing/home.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 60.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Welcome',
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(22, 39, 66, 1),
                    fontWeight: FontWeight.w800,
                    fontSize: 38.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Back!',
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(22, 39, 66, 1),
                    fontWeight: FontWeight.w800,
                    fontSize: 38.0,
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              TextFormFielWidget(),
              SizedBox(height: 20.0),
              SocialIconsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFormFielWidget extends StatefulWidget {
  @override
  _TextFormFielWidgetState createState() => _TextFormFielWidgetState();
}

class _TextFormFielWidgetState extends State<TextFormFielWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Enter email',
            labelText: 'Email',
            prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        SizedBox(height: 30.0),
        TextFormField(
          controller: passwordController,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Enter password',
            labelText: 'Password',
            prefixIcon: Icon(Icons.lock),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        SizedBox(height: 6.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPage()),
                );
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
        SizedBox(height: 45.0),
        ElevatedButton(
          onPressed: () {
             Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Login',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary:Color.fromRGBO(68, 26, 122, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        SizedBox(height: 90.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Or Continue with',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}

class SocialIconsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 54.0,
              height: 54.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0,
                  )),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(Icons.facebook, color: Colors.blue),
              ),
            ),
            SizedBox(width: 20.0),
            Container(
              width: 54.0,
              height: 54.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(Icons.apple, color: Colors.black),
              ),
            ),
            SizedBox(width: 20.0),
            Container(
              width: 54.0,
              height: 54.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Image.asset(
                  'assets/images/google.png',
                  width: 12.0,
                  height: 12.0,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dont Have an Account?',
              style: TextStyle(fontSize: 12.0, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignPage()),
                );
              },
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 12.0, color: Colors.red),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
