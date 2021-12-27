import 'package:flutter/material.dart';

class CustomDatePicker extends StatefulWidget {

  const CustomDatePicker({Key? key}) : super(key: key);

  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {

  String dateNowString = DateTime.now().toString();
  final dateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: TextFormField(
        controller: dateController,
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
          dateController.text = startDate.toString().substring(0,10);
        },
      ),
    );
  }
}
