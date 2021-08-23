import 'package:drink/models/data_model.dart';
import 'package:drink/models/product.dart';
import 'package:drink/widgets/circle_scond_screen.dart';
import 'package:drink/widgets/general_information_screen2.dart';
import 'package:drink/widgets/header_Screen2.dart';
import 'package:drink/widgets/information_screen2.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final Product product;

  const SecondScreen({required this.product});

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(160, 199, 67, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -10,
              right: -30,
              child: Circle(
                size: size,
              ),
            ),
            HeaderScreen2(),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 20),
              child: GeneralInformation(
                size: size,
                title: widget.product.title,
                suptitle: widget.product.suptitle,
                price: widget.product.price,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Information(size: size,description: widget.product.decrption,),
            ),
            Positioned(
              top: size.height * .029,
              right: 0,
              child: Container(
                width: size.width * .5,
                height: size.height * .4,
                child: Image.asset(widget.product.imagUrl),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        width: size.width,
        height: size.height * .09,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.event_note_outlined,
                size: 30,
                color: Colors.black54,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                size: 30,
                color: Colors.black54,
              ),
            ),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    if(!cartList.contains(widget.product))
                        cartList.add(widget.product);
                  });
                },
                child: Text(
                  'Purchased',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
