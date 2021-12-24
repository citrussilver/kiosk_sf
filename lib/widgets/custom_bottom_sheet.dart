import 'package:flutter/material.dart';
import 'package:kiosk_sf/services/data_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:kiosk_sf/widgets/decorated_textfield.dart';

class CustomBottomSheetWidget extends StatefulWidget {
  final String hintText;
  const CustomBottomSheetWidget({Key? key, required this.hintText}) : super(key: key);

  @override
  _CustomBottomSheetWidgetState createState() => _CustomBottomSheetWidgetState();
}

class _CustomBottomSheetWidgetState extends State<CustomBottomSheetWidget> {

  String dateNowString = DateTime.now().toString();
  final mngDateController = TextEditingController();
  final expiryDateController = TextEditingController();

  final _dataService = DataService();

  String _getCurrentDate() {
    DateTime now = new DateTime.now();
    DateTime currentDate = new DateTime(now.year, now.month, now.day);
    String currentDateStr = currentDate.toString();
    currentDateStr = currentDateStr.substring(0,10);
    currentDateStr = currentDateStr.replaceAll('-', '');
    return currentDateStr;
  }

  void _tryCallProc() async {
    SharedPreferences jsessionId = await SharedPreferences.getInstance();
    String? extractJsessionId = jsessionId.getString('jsessionid');
    String mngDateStr = mngDateController.text;
    String currentDateStr = _getCurrentDate();

    if(mngDateStr != '') {
      mngDateStr = mngDateStr.replaceAll('-', '');
    } else {
      mngDateStr = currentDateStr;
      print(mngDateStr);
    }

    String expiryDateStr = expiryDateController.text;
    if(expiryDateStr != '') {
      expiryDateStr = expiryDateStr.replaceAll('-', '');
    } else {
      expiryDateStr = currentDateStr;
      print(expiryDateStr);
    }

    final response = await _dataService.tryCallProc(extractJsessionId, mngDateStr, expiryDateStr );
    if (response != null) {
      print('response is not null');
      print(response.toString());
    } else {
      print('response is NOT 1');
    }
  }

  Widget _createLabelInput(String labelText){

    if(labelText.contains('Date')){
      return Column(
        children: [
          Text(
            labelText,
          ),
          const SizedBox(
            height: 2.0,
          ),
          DecoratedTextField(paramHintText: labelText),
        ],
      );
    } else {
      return Column(
          children: [
          Text(
          labelText,
        ),
          const SizedBox(
          height: 2.0,
        ),
          DecoratedTextField(paramHintText: labelText),
          //CustomTextField(paramHintText: labelText),
        ],
      );
    }

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 8),
      height: MediaQuery.of(context).size.height * 0.65,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF3F51B5),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text("Add Lot",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
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
                      const SizedBox(
                        height: 2.0,
                      ),
                      _createLabelInput('Managed Date'),
                      const SizedBox(
                        height: 2.0,
                      ),
                      _createLabelInput('Expiration Date'),
                      const SizedBox(
                        height: 2.0,
                      ),
                      _createLabelInput('LOT'),
                      const SizedBox(
                        height: 2.0,
                      ),
                      _createLabelInput('Inspected Qty.'),
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
                          onPressed: () {
                            _tryCallProc();
                          },
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
      ),
    );
  }
}

