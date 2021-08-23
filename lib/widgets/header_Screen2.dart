import 'package:flutter/material.dart';
class HeaderScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          IconButton(
            icon: Icon(Icons.arrow_back_sharp,
              size: 30,
              color: Colors.white,
            ),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined,
              size: 30,
              color: Colors.white,
            ),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
