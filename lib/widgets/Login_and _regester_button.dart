import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LRButton extends StatelessWidget {
  final Size size;
  final Color color;
  final String text;
  final Function x;

  const LRButton({required this.size,required this.color,required this.text,required this.x,}) ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width,
        height: 60,
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextButton(
          onPressed: () => x(),
          child: Text(
            text,
            style: GoogleFonts.almarai(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
