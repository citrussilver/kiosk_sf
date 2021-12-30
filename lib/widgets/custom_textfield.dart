import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  const CustomTextField({Key? key, required this.hintText}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  @override
  Widget build(BuildContext context) {
    if(widget.hintText.contains('Qty')) {
      return Container(
          height: 50,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: TextFormField(
            keyboardType: TextInputType.number,
            style: const TextStyle(
              fontSize: 22.0,
            ),
            decoration: InputDecoration(
              hintText: 'Input ${widget.hintText}',
            ),
          )
      );
    } else {
      return Container(
          height: 50,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: TextField(
            style: const TextStyle(
              fontSize: 22.0,
            ),
            decoration: InputDecoration(
              hintText: 'Input ${widget.hintText}',
            ),
          )
      );
    }
  }
}