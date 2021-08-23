import 'package:flutter/material.dart';
class Head3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_sharp,
            size: 30,
            color: Colors.black87,
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chat_outlined,
            size: 30,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
