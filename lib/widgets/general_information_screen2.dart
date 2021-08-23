
import 'package:flutter/material.dart';
class GeneralInformation extends StatelessWidget {
  final Size size;
  final String title,suptitle;
  final int price;


  const GeneralInformation({required this.size,required this.title,required this.suptitle,required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: size.width * .5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildText(text: title,size: 40,f: FontWeight.bold),
          SizedBox(height: 10),
          buildText(text: suptitle,size: 22,f:FontWeight.w300),
          SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.attach_money,size: 22,color: Colors.white,),
             buildText(text: "${price}", size: 50,f: FontWeight.bold),
            ],
          ),
        ],
      ),
    );
  }

  Text buildText({required String text,required double size,required FontWeight f}) {
  return Text(
          text,
          style: TextStyle(
              fontSize: size,
              fontWeight: f,
              color: Colors.white,
              letterSpacing: 1),
        );
  }
}
