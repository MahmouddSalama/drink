import 'package:flutter/material.dart';

class NamedField extends StatefulWidget {
  final TextInputType textInputType;
  final IconData prefixIcon;
  final String hintText;
  final String lableText;
  final TextEditingController textEditingController;
  final val;

  const NamedField(
      {required this.textInputType,
      required this.prefixIcon,
      required this.hintText,
      required this.lableText,
      required this.textEditingController,
      required this.val});

  @override
  _NamedFieldState createState() => _NamedFieldState();
}

class _NamedFieldState extends State<NamedField> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        controller: widget.textEditingController,
        onChanged: (value) {
          setState(() {
            widget.textEditingController.value!=value;
          });
        },
        keyboardType: widget.textInputType,
        obscureText: false,
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.prefixIcon,
            size: 20,
            color: Colors.green,
          ),
          hintText: widget.hintText,
          labelText: widget.lableText,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
          labelStyle: TextStyle(
            color: Colors.blueGrey,
            fontSize: 15,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.green.withOpacity(.5),
              )),
        ),
      ),
    );
  }
}

class PassField extends StatefulWidget {
  final TextInputType textInputType;
  final IconData prefixIcon;
  final String hintText;
  final String lableText;
  final TextEditingController textEditingController;
  final val;

  PassField({
    required this.textInputType,
    required this.prefixIcon,
    required this.hintText,
    required this.lableText,
    required this.textEditingController,
    required this.val,
  });

  @override
  _PassFieldState createState() => _PassFieldState();
}

class _PassFieldState extends State<PassField> {
  bool is_notvis = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        controller: widget.textEditingController,
        onChanged: (value) {
         setState(() {
           widget.textEditingController.value!=value;
         });
        },
        keyboardType: TextInputType.emailAddress,
        obscureText: is_notvis,
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                is_notvis = !is_notvis;
              });
            },
            icon: Icon(
              is_notvis ? Icons.visibility : Icons.visibility_off,
              color: Colors.green,
              size: 20,
            ),
          ),
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.green,
            size: 20,
          ),
          hintText: widget.hintText,
          labelText: widget.lableText,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
          labelStyle: TextStyle(
            color: Colors.blueGrey,
            fontSize: 15,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.green.withOpacity(.5),
              )
          ),
        ),
      ),
    );
  }
}
