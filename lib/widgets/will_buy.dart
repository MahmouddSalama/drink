import 'package:drink/models/data_model.dart';
import 'package:drink/screens/second_screen.dart';
import 'package:flutter/material.dart';

class WillBuy extends StatelessWidget {
  final size;

  const WillBuy({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              "will buy",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
          ),
          Container(
            height: size.height * .2,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: dataModel.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen(product: dataModel[index],)));
                  },
                  title: Text(
                    dataModel[index].title,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text(
                      dataModel[index].suptitle,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  leading: Container(
                    width: 60,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.greenAccent,
                    ),
                    child: Image.asset(
                      dataModel[index].imagUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                  trailing: Container(
                    width: 50,
                    height: 80,
                    child: Row(
                      children: [
                        Icon(
                          Icons.attach_money,
                          color: Colors.black,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '${dataModel[index].price}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
