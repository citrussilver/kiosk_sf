import 'package:flutter/material.dart';
import 'package:kiosk_sf/widgets/decorated_textfield.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
      height: 450,
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10, color: Colors.grey.shade300, spreadRadius: 5)
                  ]),
              child: Column(
                  children: [
                    DecoratedTextField(hintText: 'Input Managed Date'),
                    DecoratedTextField(hintText: 'Input Expiration Date'),
                    DecoratedTextField(hintText: 'Input LOT'),
                    DecoratedTextField(hintText: 'Input Inspected Qty.'),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    )
                  ]
              ),
            ),
          ]
      ),
    );
  }
}