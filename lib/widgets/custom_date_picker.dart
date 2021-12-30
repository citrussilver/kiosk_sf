import 'package:flutter/material.dart';

class CustomDatePicker extends StatefulWidget {
  final TextEditingController controller;
  const CustomDatePicker({Key? key, required this.controller}) : super(key: key);

  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {

  String dateNowString = DateTime.now().toString();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: TextFormField(
        controller: widget.controller,
        showCursor: true,
        readOnly: true,
        style: const TextStyle(
          fontSize: 20.0,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.today),
          border: OutlineInputBorder(),
          hintText: dateNowString,
        ),
        onTap: () async {
          var startDate =  await showDatePicker(
              context: context,
              initialDate:DateTime.now(),
              firstDate:DateTime(1900),
              lastDate: DateTime(2100));
          widget.controller.text = startDate.toString().substring(0,10);
        },
      ),
    );
  }
}
