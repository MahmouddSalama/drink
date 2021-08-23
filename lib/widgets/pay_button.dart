import 'package:drink/models/total.dart';
import 'package:flutter/material.dart';
class PayButton extends StatelessWidget {
  final Size size;

  const PayButton({required this.size});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: size.width,
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(.7),
        borderRadius: BorderRadius.circular(40),
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Total",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Icon(
              Icons.attach_money,
              color: Colors.white,
            ),
            Text(
              "$totalPrice",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Spacer(),
            Text(
              'Next',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w400
              ),
            ),
          ],
        ),
      ),
    );
  }
}
