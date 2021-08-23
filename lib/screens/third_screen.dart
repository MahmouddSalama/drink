import 'package:drink/models/data_model.dart';
import 'package:drink/widgets/bottom_appbar.dart';
import 'package:drink/widgets/cart_list.dart';
import 'package:drink/widgets/header_third_screen.dart';
import 'package:drink/widgets/pay_button.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Head3Screen(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Shopping cart",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 11),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "A total of ${cartList.length} Pieces",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
              ),
              SizedBox(height: 15),
              CartList(size: size),
              SizedBox(height: 20),
             PayButton(size: size),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomBar(),
    );
  }
}
