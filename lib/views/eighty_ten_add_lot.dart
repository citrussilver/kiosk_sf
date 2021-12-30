import 'package:flutter/material.dart';
import 'package:kiosk_sf/services/data_service.dart';
import 'package:kiosk_sf/widgets/custom_styled_date_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:kiosk_sf/widgets/custom_textfield.dart';

class EightyTenAddLot extends StatefulWidget {

  const EightyTenAddLot({Key? key}) : super(key: key);

  @override
  _EightyTenAddLotState createState() => _EightyTenAddLotState();
}

class _EightyTenAddLotState extends State<EightyTenAddLot> {

  String dateNowString = DateTime.now().toString();
  final dateController = TextEditingController();
  final mngDateController = TextEditingController();
  final expiryDateController = TextEditingController();
  final lotController = TextEditingController();
  final inspectedQtyController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    mngDateController.dispose();
    expiryDateController.dispose();
    lotController.dispose();
    inspectedQtyController.dispose();
    super.dispose();
  }

  final _dataService = DataService();

  String _getCurrentDate() {
    DateTime now = new DateTime.now();
    DateTime currentDate = new DateTime(now.year, now.month, now.day);
    String currentDateStr = currentDate.toString();
    currentDateStr = currentDateStr.substring(0,10);
    //currentDateStr = currentDateStr.replaceAll('-', '');
    return currentDateStr;
  }

  void _eightyTen_40W(mngDate, expiryDate, lot, inspectedQty) async {
    SharedPreferences jsessionId = await SharedPreferences.getInstance();
    String? extractJsessionId = jsessionId.getString('jsessionid');

    String currentDateStr = _getCurrentDate();
    String mngDateStr = mngDate;

    if(mngDateStr != '') {
      mngDateStr = mngDateStr.replaceAll('-', '');
    } else {
      mngDateStr = currentDateStr;
      print(mngDateStr);
    }

    String expiryDateStr = expiryDate;
    print('assignment:  $expiryDateStr');
    if(expiryDateStr != '') {
      expiryDateStr = expiryDateStr.replaceAll('-', '');
    } else {
      expiryDateStr = currentDateStr;
      print(expiryDateStr);
    }

    final response = await _dataService.eighty10_40W(extractJsessionId, mngDateStr, expiryDateStr, lot, inspectedQty );
    if (response != null) {
      print('response is not null');
      print(response.toString());
    } else {
      print('response is NOT 1');
    }
  }

  void initializeDates() {
    mngDateController.text = _getCurrentDate();
    expiryDateController.text = _getCurrentDate();
  }

  Widget _createLabelInput(String labelText){
    if(labelText.contains('Date')) {
      dateController.text = _getCurrentDate();
      return CustomStyledDatePicker(labelText: labelText, controller: dateController);
    } else {
      return Column(
        children: [
          CustomTextField(hintText: labelText),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text('8010 - Add Lot'),
          leading: IconButton(icon: const Icon(Icons.arrow_back),
            onPressed:() => Navigator.pop(context, false),
          )
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              // mainAxisSize: MainAxisSize.max,
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
                  const SizedBox(
                    height: 20.0,
                  ),
                  //main content
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    width: MediaQuery.of(context).size.width * 0.5,
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
                          //_createLabelInput('Managed Date'),
                          Container(
                              height: 100,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              // decoration: BoxDecoration(
                              //     color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Managed Date:',
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  TextFormField(
                                      style: const TextStyle(
                                        fontSize: 20.0,
                                      ),
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.today),
                                      ),
                                      showCursor: true,
                                      readOnly: true,
                                      controller: mngDateController,
                                      validator: (val) => val!.isEmpty ? 'Date is required' : null,
                                      onTap: () async {
                                        var selectedDate =  await showDatePicker(
                                            context: context,
                                            initialDate:DateTime.now(),
                                            firstDate:DateTime(1900),
                                            lastDate: DateTime(2100));
                                        mngDateController.text = selectedDate.toString().substring(0,10);
                                      }
                                  ),
                                ],
                              )
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          //_createLabelInput('Expiration Date'),
                          Container(
                              height: 100,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              // decoration: BoxDecoration(
                              //     color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Expiry Date:',
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  TextFormField(
                                      style: const TextStyle(
                                        fontSize: 20.0,
                                      ),
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.today),
                                      ),
                                      showCursor: true,
                                      readOnly: true,
                                      controller: expiryDateController,
                                      validator: (val) => val!.isEmpty ? 'Date is required' : null,
                                      onTap: () async {
                                        var selectedDate =  await showDatePicker(
                                            context: context,
                                            initialDate:DateTime.now(),
                                            firstDate:DateTime(1900),
                                            lastDate: DateTime(2100));
                                        expiryDateController.text = selectedDate.toString().substring(0,10);
                                      }
                                  ),
                                ],
                              )
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          //_createLabelInput('LOT'),
                          Container(
                              height: 50,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              child: TextField(
                                style: const TextStyle(
                                  fontSize: 22.0,
                                ),
                                decoration: const InputDecoration(
                                  hintText: 'Input LOT',
                                ),
                                controller: lotController,
                              )
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          // _createLabelInput('Inspected Qty.'),
                          Container(
                              height: 50,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                style: const TextStyle(
                                  fontSize: 22.0,
                                ),
                                decoration: const InputDecoration(
                                  hintText: 'Input Inspected Qty.',
                                ),
                                controller: inspectedQtyController
                              )
                          ),
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
                                _eightyTen_40W(mngDateController.text, expiryDateController.text, lotController.text, inspectedQtyController.text);
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
        ),
      ),
    );
  }
}

