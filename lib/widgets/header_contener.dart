import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderContainer extends StatelessWidget {
  final  sizex;
  final sizey;
  final String text;

  const HeaderContainer({required this.text, required this.sizex,required this.sizey}) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0, -.7),
      child: Text(
        text,
        style: GoogleFonts.pacifico(
            fontSize: 34,
            color: Colors.white,
            fontWeight: FontWeight.w400,
            letterSpacing: 2),
      ),
      width: sizex,
      height: sizey,
      decoration: BoxDecoration(
        color: Color.fromRGBO(160, 199, 67, 1),
        borderRadius:
        BorderRadius.only(bottomLeft: Radius.circular(80)),
      ),
    );
  }
}
