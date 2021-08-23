import 'package:drink/models/data_model.dart';
import 'package:drink/models/product.dart';
import 'package:drink/screens/second_screen.dart';
import 'package:flutter/material.dart';
class RecommendCategory extends StatelessWidget {
  final size;
  const RecommendCategory({required this.size,}) ;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: size.height *.26,
      width: size.width,
      child: ListView.builder(
        itemCount: dataModel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: 140,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    colors: [
                      Colors.green,
                      Colors.greenAccent,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: Image.asset(
                      dataModel[index].imagUrl,
                      fit: BoxFit.fill,
                    ),
                    width: 100,
                    height:140,
                  ),
                  Text(
                    dataModel[index].title,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: .7,
                        fontSize: 20
                    ),
                  ),
                ],
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen(product: dataModel[index],)));

            },
          );
        },
      ),
    );
  }
}
