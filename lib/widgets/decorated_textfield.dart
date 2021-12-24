import 'package:flutter/material.dart';

class DecoratedTextField extends StatefulWidget {
  final String paramHintText;
  DecoratedTextField({Key? key, required this.paramHintText}) : super(key: key);

  @override
  State<DecoratedTextField> createState() => _DecoratedTextFieldState();
}

class _DecoratedTextFieldState extends State<DecoratedTextField> {
  final dateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(widget.paramHintText.contains('Date')) {
      return Container(
          height: 50,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          // decoration: BoxDecoration(
          //     color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: widget.paramHintText,
              prefixIcon: Icon(Icons.today),
            ),
            showCursor: true,
            readOnly: true,
            controller: dateController,
            onTap: () async {
              var startDate =  await showDatePicker(
                  context: context,
                  initialDate:DateTime.now(),
                  firstDate:DateTime(1900),
                  lastDate: DateTime(2100));
              dateController.text = startDate.toString().substring(0,10);
            }
          )
      );
    } else {
      if(widget.paramHintText.contains('Qty')) {
        return Container(
            height: 50,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: TextField(
              keyboardType: TextInputType.number,
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
              decoration: InputDecoration(
                hintText: 'Input ${widget.paramHintText}',
              ),
            )
        );
      }

    }
  }
}