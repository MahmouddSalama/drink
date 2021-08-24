import 'package:flutter/material.dart';

class DoYou extends StatelessWidget {
  final Size size;
  final String text1;
  final String textButton;
  final Function x;

  const DoYou({
    Key? key,
   required this.size,
   required this.text1,
   required this.textButton,
   required this.x,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: TextStyle(
                fontSize: 15,
                color: Colors.green.withOpacity(.9),
                fontWeight: FontWeight.w400),
          ),
          GestureDetector(
            child: Text(
              textButton,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                  fontWeight: FontWeight.w800),
            ),
            onTap:()=>x(),
          ),
        ],
      ),
    );
  }
}
