import 'package:drink/widgets/bottom_appbar.dart';
import 'package:drink/widgets/category_list.dart';
import 'package:drink/widgets/recommend_category.dart';
import 'package:drink/widgets/roe_header.dart';
import 'package:drink/widgets/serch_feild.dart';
import 'package:drink/widgets/will_buy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
            width: size.width,
            child: Column(
              children: [
                SizedBox(height: 20),
                RowHeader(),
                SizedBox(height: 20),
                Search(size: size),
                CategoryList(size: size),
                RecommendCategory(size: size),
                SizedBox(height: 20),
               WillBuy(size: size,),
              ],
            ),
          ),
        ),
      ),
      extendBody: false,
      bottomNavigationBar: MyBottomBar(),
    );
  }
}
