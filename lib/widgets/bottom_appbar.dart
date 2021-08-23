import 'package:drink/screens/third_screen.dart';
import 'package:flutter/material.dart';
class MyBottomBar extends StatefulWidget {
  @override
  _MyBottomBarState createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _currentBottomBar=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  _currentBottomBar=1;
                });
              },
              icon: Icon(
                Icons.home_outlined,
                size: _currentBottomBar==1?30:20,
                color: _currentBottomBar==1?Colors.greenAccent:Colors.black54,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _currentBottomBar=2;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdScreen()));
              },
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: _currentBottomBar==2?30:20,
                color: _currentBottomBar==2?Colors.greenAccent:Colors.black54,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _currentBottomBar=3;
                });
              },
              icon: Icon(
                Icons.person_outline_sharp,
                size: _currentBottomBar==3?30:20,
                color: _currentBottomBar==3?Colors.greenAccent:Colors.black54,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

