import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String paramHintText;
  CustomTextField({Key? key, required this.paramHintText}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final dateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }

  String _getCurrentDate() {
    DateTime now = new DateTime.now();
    DateTime currentDate = new DateTime(now.year, now.month, now.day);
    String currentDateStr = currentDate.toString();
    currentDateStr = currentDateStr.substring(0,10);
    currentDateStr = currentDateStr.replaceAll('-', '');
    return currentDateStr;
  }

  @override
  Widget build(BuildContext context) {
    if(widget.paramHintText.contains('Qty')) {
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
              hintText: 'Input ${widget.paramHintText}',
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
              hintText: 'Input ${widget.paramHintText}',
            ),
          )
      );
    }
  }
}