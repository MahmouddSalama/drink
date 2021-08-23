import 'package:drink/widgets/options_screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  final Size size;
final String description;
  const Information({required this.size,required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * .5,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      padding: EdgeInsets.only(
        top: 45,
        left: 20,
          bottom: 5,
      ),
      child: ListView(
        children: [
          Text(
            "Particulars",
            style: TextStyle(
                fontWeight: FontWeight.w400, color: Colors.black, fontSize: 40),
          ),
          SizedBox(height: 7),
          Text(description,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black87,
              fontWeight: FontWeight.w300,
            ),
          ),
          Row(
            children: [
              buildIconStar(),
              buildIconStar(),
              buildIconStar(),
              buildIconStar(),
              buildIconStar(),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Option(text: '500ml', iconData: Icons.coffee_rounded),
              Option(text: 'Less ice', iconData: Icons.ac_unit),
              Option(text: 'Sugar', iconData: Icons.add_business_outlined),
            ],
          ),
          SizedBox(height: 30,),
          Text(
            'Service',
            style: TextStyle(
                fontWeight: FontWeight.w400, color: Colors.black, fontSize: 40),
          ),
          SizedBox(height: 7),
          Text(
            'Businesses give it away for free Minus 2 yuan every 30 yuan of goos',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black87,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  Padding buildIconStar() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: Icon(
          Icons.star,
          size: 22,
          color: Color.fromRGBO(160, 199, 67, 1),
        ));
  }
}
