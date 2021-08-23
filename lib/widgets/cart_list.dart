import 'package:drink/models/data_model.dart';
import 'package:drink/models/total.dart';
import 'package:flutter/material.dart';
class CartList extends StatefulWidget {
 final Size size;

   CartList({required this.size}) ;

  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
 int _num=1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width,
      height: widget.size.height * .5,
      //color: Colors.greenAccent,
      child: ListView.builder(
        itemCount: cartList.length,
        itemBuilder: (context, index) {
          return Container(
            width: widget.size.width,
            padding:
            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 140,
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    cartList[index].imagUrl,
                  ),
                ),
                SizedBox(
                  width: 22,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cartList[index].title,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 25),
                      ),
                      Text(
                        "Signature product",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.attach_money,
                            size: 25,
                            color: Colors.green,
                          ),
                          Text(
                            '${cartList[index].price}',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _num++;
                        });
                      },
                      icon: Icon(Icons.add),
                    ),
                    Text("$_num"),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if(_num>1)
                            _num--;
                        });
                      },
                      icon: Text('-',style: TextStyle(fontSize: 30),),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
