import 'package:flutter/material.dart';
class Circle extends StatelessWidget {
  final Size size;

  const Circle({required this.size}) ;
  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: size.height*.22,
      backgroundColor: Color.fromRGBO( 71, 135, 2 ,.3),
      child: CircleAvatar(
        radius: size.height*.14,
        backgroundColor:Color.fromRGBO(160, 199, 67, 1),
      ),
    );
  }
}
