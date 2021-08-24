import 'package:drink/screens/login_screen.dart';
import 'package:drink/screens/register_screen.dart';
import 'package:drink/widgets/Login_and%20_regester_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(160, 199, 67, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: GoogleFonts.pacifico(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
            Container(
              width: size.width,
              height: size.height * .45,
              child: Image.asset(
                'assets/images/welcom.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            LRButton(
                size: size,
                color: Colors.green,
                text: 'Sign in',
                x: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }),
            LRButton(
                size: size,
                color: Colors.green.withOpacity(.5),
                text: 'Register',
                x: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                }),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
