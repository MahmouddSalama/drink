import 'package:flutter/material.dart';
class Option extends StatelessWidget {
  final String text;
  final IconData iconData;

  const Option({required this.text,required this.iconData}) ;
  @override

  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.green.withOpacity(.2),
      ),
      child: buildColumn(text: text, iconData: iconData),
    );
  }

  Column buildColumn({required String text,required IconData iconData}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 50,
          color: Colors.green,
        ),
        Text(text,style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.green

        ),),
      ],
    );
  }
}
