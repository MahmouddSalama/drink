import 'package:drink/screens/home_screen.dart';
import 'package:drink/screens/register_screen.dart';
import 'package:drink/widgets/Login_and%20_regester_button.dart';
import 'package:drink/widgets/do_you_have.dart';
import 'package:drink/widgets/header_contener.dart';
import 'package:drink/widgets/text_form_fields_NP.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _Econtroller = TextEditingController();
  var _Pcontroller = TextEditingController();
  String email = '', pass = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(160, 199, 67, 1),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(
                text: 'Login', sizex: size.width, sizey: size.height * .17),
            SizedBox(
              height: 40,
            ),
            NamedField(
              textInputType: TextInputType.emailAddress,
              prefixIcon: Icons.email,
              hintText: '*****@gmail.com',
              lableText: 'Email Address',
              textEditingController: _Econtroller,
              val: email,
            ),
            PassField(
              textInputType: TextInputType.visiblePassword,
              prefixIcon: Icons.lock,
              hintText: 'hard password',
              lableText: "password",
              textEditingController: _Pcontroller,
              val: pass,
            ),
            SizedBox(height: size.height * .1),
            LRButton(
              size: size,
              color: Color.fromRGBO(160, 199, 67, 1),
              text: 'Login',
              x: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
            ),
            DoYou(
              size: size,
              text1: 'Dose not have an account? ',
              textButton: 'Sign up',
              x: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Register()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
