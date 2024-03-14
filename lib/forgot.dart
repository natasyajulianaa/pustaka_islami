import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({Key? key}) : super(key: key);

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
                  'Forgot',
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
                  'password?',
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(22, 39, 66, 1),
                    fontWeight: FontWeight.w800,
                    fontSize: 38.0,
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              TextFormFielWidget(),
             
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
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'By clicking the Register button, you agree to the public offer',
                style: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontSize: 10.0,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 45.0),
        ElevatedButton(
          onPressed: () {
            // TODO: Implement login logic
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Submit',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color.fromRGBO(7, 20, 126, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
       ),
      ]
    );
  }
}


