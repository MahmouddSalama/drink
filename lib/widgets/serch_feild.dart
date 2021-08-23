import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  final size;

  const Search({required this.size}) ;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: size.width-50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Container(
        height: 50,
        width: size.width,
        child: Card(
          color: Color.fromRGBO(246, 246, 242, 1),
          margin: EdgeInsets.symmetric(horizontal: 5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          //elevation: 3,
          child: TextFormField(
            cursorHeight: 20,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                top: 13.5
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 15,right: 10,top: 10),
                child: Icon(Icons.search,size: 30,
                    color: Colors.black26,
                ),
              ),
              border: InputBorder.none,
              hintText: 'Lemonade',
              hintStyle: TextStyle(
                color: Colors.black26,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
