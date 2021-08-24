import 'package:drink/screens/home_screen.dart';
import 'package:drink/screens/login_screen.dart';
import 'package:drink/widgets/Login_and%20_regester_button.dart';
import 'package:drink/widgets/do_you_have.dart';
import 'package:drink/widgets/header_contener.dart';
import 'package:drink/widgets/text_form_fields_NP.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  var _NControll = TextEditingController();
  var _EControll = TextEditingController();
  var _PPControll = TextEditingController();
  var _Pontroll = TextEditingController();
  String? name, email, pass, pass2;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(160, 199, 67, 1),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(
              text: 'Register',
              sizex: size.width,
              sizey: size.width * .17,
            ),
            SizedBox(
              height: 20,
            ),
            NamedField(
              textInputType: TextInputType.name,
              prefixIcon: Icons.person,
              hintText: 'Your name',
              lableText: 'mahmoud salama ',
              textEditingController: _NControll,
              val: name,
            ),
            NamedField(
              textInputType: TextInputType.emailAddress,
              prefixIcon: Icons.email,
              hintText: "****@gmail.com",
              lableText: "Email Address",
              textEditingController: _EControll,
              val: email,
            ),
            PassField(
              textInputType: TextInputType.visiblePassword,
              prefixIcon: Icons.lock,
              hintText: 'hard password',
              lableText: 'Password',
              textEditingController: _Pontroll,
              val: pass,
            ),
            PassField(
              textInputType: TextInputType.visiblePassword,
              prefixIcon: Icons.lock,
              hintText: 'privios password',
              lableText: 'Confirm Password',
              textEditingController: _PPControll,
              val: pass2,
            ),
            SizedBox(
              height: 20,
            ),
            LRButton(
              size: size,
              color: Color.fromRGBO(160, 199, 67, 1),
              text: "Register",
              x: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
            ),
            DoYou(
              size: size,
              text1:  "Do you have an account ? ",
              textButton: "Login",
              x: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
