import 'package:flutter/material.dart';
class RowHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(
            'Venus',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.2,
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.black54,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
