import 'package:flutter/material.dart';
import 'package:kiosk_sf/route/route.dart' as route;
import 'package:kiosk_sf/widgets/custom_dialog.dart';
import 'package:kiosk_sf/widgets/custom_bottom_sheet.dart';
import 'package:kiosk_sf/widgets/common_button.dart';


class EightyTenTabletPg2 extends StatefulWidget {
  const EightyTenTabletPg2({Key? key}) : super(key: key);

  Object? get arguments => null;

  @override
  _EightyTenTabletPg2State createState() => _EightyTenTabletPg2State();
}

class _EightyTenTabletPg2State extends State<EightyTenTabletPg2> {

  String accountName = 'jpim';
  String accountEmail = 'jpim@test.com';

  final managedDateController = TextEditingController();
  final expiryDateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    managedDateController.dispose();
    expiryDateController.dispose();
    super.dispose();
  }

  int selectedIndex = -1;



  void handleSelectedIndex(int val) {
    setState(() {
      selectedIndex = val;
      print('selectedIndex is $val');
    });
    // Useful for navigating to different data
    // if(val == 0) {
    //   Navigator.pushNamed(context, route.eightyTenTabletPg2)
    // }
  }

  List<DataColumn> _createColumns() {
    return [
      const DataColumn(
        label: Text(
          'Date Received',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        numeric: true,
        label: Text(
          'Queue',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Receiving Status',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Account',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Account Name',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Receiving Type',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        numeric: true,
        label: Text(
          'Count',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
    ];
  }
  // Receiving List
  List<DataRow> _createRows() {
    return [
      const DataRow(
          cells: [
            DataCell(
              Text('2021-09-09',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            DataCell(
              Text('2',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            DataCell(
              Text('입고등록',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            DataCell(
              Text('74740',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            DataCell(
              Text('Xiangling',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            DataCell(
              Text('매입입고',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            DataCell(
              Text('1',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ]
      ),
    ];
  }

  DataTable _createRcvDataTable() {
    return DataTable(
      // showCheckboxColumn: false,
      columns: _createColumns(),
      rows: _createRows(),
      dividerThickness: 5,
      dataRowHeight: 80,
      showBottomBorder: true,
      headingTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
      headingRowColor: MaterialStateProperty.resolveWith(
              (states) => const Color(0xFF3F51B5)
      ),
      dataRowColor: MaterialStateColor.resolveWith(
              (states) => const Color(0xFFC5CAE9)
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF3F51B5),
          width: 3,
        ),
        borderRadius: BorderRadius.all(const Radius.circular(10)),
      ),
    );
  }

  List<DataColumn> _createItemsDetailColumns() {
    return [
      const DataColumn(
        numeric: true,
        label: Text(
          'No',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      DataColumn(
        label: Checkbox(
          value: false, onChanged: (bool? value){value = value;},
        ),
      ),
      const DataColumn(
        numeric: true,
        label: Text(
          'Queue',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Receiving Status',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Item Code',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Item Name',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Unit',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Unit(Mng)',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Expiration Type',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        numeric: true,
        label: Text(
          'Shelf Life',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        numeric: true,
        label: Text(
          'Order Qty',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        numeric: true,
        label: Text(
          'Received Qty',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        numeric: true,
        label: Text(
          'Inspected Qty',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Storage Loc',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
    ];
  }

  List<DataRow> _createItemsDetailRows() {
    return [
      const DataRow(
          cells: [
            DataCell(
              Text('1',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Icon(Icons.check_box_outline_blank),
            ),
            DataCell(
              Text('1',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('입고등록',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('21000033',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('두릅',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('100g x 50ea',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('kg',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('유통기한',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('365',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('0',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('19',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('4',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('B-1-03',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
          ]
      ),
      const DataRow(
          cells: [
            DataCell(
              Text('2',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Icon(Icons.check_box_outline_blank),
            ),
            DataCell(
              Text('2',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('입고등록',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('21000001',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('질경이',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('100g x 50ea',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('kg',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('유통기한',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('360',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('0',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('11',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('2',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('B-1-01',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
          ]
      ),
    ];
  }

  DataTable _createItemsDetailDataTable() {
    return DataTable(
      columns: _createItemsDetailColumns(),
      rows: _createItemsDetailRows(),
      dividerThickness: 5,
      dataRowHeight: 80,
      showBottomBorder: true,
      headingTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
      headingRowColor: MaterialStateProperty.resolveWith(
              (states) => const Color(0xFF3F51B5)
      ),
      dataRowColor: MaterialStateColor.resolveWith(
              (states) => const Color(0xFFC5CAE9)
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF3F51B5),
          width: 3,
        ),
        borderRadius: BorderRadius.all(const Radius.circular(10)),
      ),
    );
  }

  List<DataColumn> _createLotWarehousingColumns() {
    return [
      const DataColumn(
        numeric: true,
        label: Text(
          'No',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        numeric: true,
        label: Text(
          'Queue',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Expiration Date',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'LOT',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        numeric: true,
        label: Text(
          'Received Qty',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
    ];
  }

  List<DataRow> _createLotWarehousingRows() {
    return [
      const DataRow(
          cells: [
            DataCell(
              Text('1',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('2',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('2021-12-31',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('tzx2y2',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('3',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
          ]
      ),
      const DataRow(
          cells: [
            DataCell(
              Text('2',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('3',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('2021-12-31',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('tzx2y3',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            DataCell(
              Text('1',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
          ]
      ),
    ];
  }

  DataTable _createLotWarehousingDataTable() {
    return DataTable(
      columns: _createLotWarehousingColumns(),
      rows: _createLotWarehousingRows(),
      dividerThickness: 5,
      dataRowHeight: 80,
      showBottomBorder: true,
      headingTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
      headingRowColor: MaterialStateProperty.resolveWith(
              (states) => const Color(0xFF3F51B5)
      ),
      dataRowColor: MaterialStateColor.resolveWith(
              (states) => const Color(0xFFC5CAE9)
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF3F51B5),
          width: 3,
        ),
        borderRadius: BorderRadius.all(const Radius.circular(10)),
      ),
    );
  }


  Widget buildCommonBtn({
    required String text,
    required String color,
    VoidCallback? onTap
  }) {

    MaterialColor appliedColor = Colors.blue;

    if(color == 'red') {
      appliedColor = Colors.red;
    }

    return SizedBox(
      height: 50,
      child: ElevatedButton(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: appliedColor,
        ),
        onPressed: onTap,
      ),
    );
  }

  Widget buildDatePicker({
    VoidCallback? onTap
  }) {

    return SizedBox(
      width: 135,
      child: TextField(
        controller: managedDateController,
        style: const TextStyle(
          fontSize: 20.0,
        ),
        decoration: const InputDecoration(
          border: OutlineInputBorder(),

        ),
        onTap: () async {
          var startDate =  await showDatePicker(
              context: context,
              initialDate:DateTime.now(),
              firstDate:DateTime(1900),
              lastDate: DateTime(2100));
          managedDateController.text = startDate.toString().substring(0,10);
        },
      ),
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 4:
        print('Index is: $index');
        Navigator.pushNamed(context, route.eightyTenAddLot);
        // showModalBottomSheet<dynamic>(
        //     context: context,
        //     useRootNavigator: true,
        //     isScrollControlled: true,
        //     builder: (context) => CustomBottomSheetWidget(hintText: 'hello')
        // );
        // showDialog(
        //   context: context,
        //   builder: (BuildContext context) {
        //     return CustomDialog();
        //   }
        // );
        break;
      default:
        throw('The route does not exist yet.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: true,
            title: const Text('8010 - Receipt Inspection Registration'),
            leading: IconButton(icon: const Icon(Icons.arrow_back),
              onPressed:() => Navigator.pop(context, false),
            )
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _createRcvDataTable(),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
              child: Row(
                children: [
                  // Star
                  Expanded(
                    child: Row(
                      children: const [
                        Icon(
                            Icons.star,
                            color: Colors.red
                        ),
                        Text(
                          'Items Ordered To Be Received [2]',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        buildCommonBtn(
                            text: 'Issue LOT Label',
                            color: '',
                            onTap: () => selectedItem(context, 1)
                        ),
                        const SizedBox(
                          width: 80.0,
                        ),
                        buildCommonBtn(
                            text: 'Confirmation',
                            color: '',
                            onTap: () => selectedItem(context, 1)
                        ),
                        const SizedBox(
                          width: 30.0,
                        ),
                        buildCommonBtn(
                            text: 'Insp Cancel',
                            color: 'red',
                            onTap: () => selectedItem(context, 1)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: _createItemsDetailDataTable(),
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Column(children: [
              SizedBox(
                width: 650,
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: const [
                          Icon(
                              Icons.star,
                              color: Colors.red
                          ),
                          Text(
                            'LOT Warehousing',
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          buildCommonBtn(
                              text: 'Add LOT',
                              color: '',
                              onTap: () => selectedItem(context, 4)
                          ),
                          const SizedBox(
                              width: 25.0
                          ),
                          buildCommonBtn(
                              text: 'Delete LOT',
                              color: 'red',
                              onTap: () => selectedItem(context, 6)
                          ),
                          //CommonButton(title: 'Delete LOT', buttonType: ButtonType.normal, onPressed: () => {} )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: _createLotWarehousingDataTable(),
              ),
            ],
            )
          ],
        ),
      ),
    );
  }
}
