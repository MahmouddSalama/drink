import 'package:flutter/material.dart';
class CategoryList extends StatefulWidget {
  const CategoryList({required this.size});

  @override
  _CategoryListState createState() => _CategoryListState();
  final size;
}

class _CategoryListState extends State<CategoryList> {



  List<String> category = [
    'Recommend',
    'Black tea',
    'Green tea',
    'Milky sheck',
    'Orange drink',
    'Apple drink',
    'Others',
  ];

  int _curent = 0;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: widget.size.width,
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _curent = index;
                });
              },
              child: Container(
              //  padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      category[index],
                      style: _curent==index?TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(123, 170, 18, 1),
                      ):TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 5,),
                    _curent==index? Container(
                        width:70,
                        height: 4,
                        decoration:BoxDecoration(
                          color: Color.fromRGBO(123, 170, 18, 1),
                          borderRadius: BorderRadius.circular(50),
                        )
                    ):Container(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
