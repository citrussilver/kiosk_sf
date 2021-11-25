import 'package:flutter/material.dart';

class EightyTenTabletPg2 extends StatefulWidget {
  const EightyTenTabletPg2({Key? key}) : super(key: key);

  @override
  _EightyTenTabletPg2State createState() => _EightyTenTabletPg2State();
}

class _EightyTenTabletPg2State extends State<EightyTenTabletPg2> {

  String accountName = 'jpim';
  String accountEmail = 'jpim@test.com';

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
              Text('40030',
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
        label: Text(
          'Shelf Life',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Order Qty',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Received Qty',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
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
        label: Text(
          'No',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      const DataColumn(
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
                        SizedBox(
                          height: 50, //height of button
                          child: ElevatedButton(
                            child: const Text(
                              'Issue LOT Label',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(
                          width: 80.0,
                        ),
                        SizedBox(
                          height: 50, //height of button
                          child: ElevatedButton(
                            child: const Text(
                              'Confirmation',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(
                          width: 30.0,
                        ),
                        SizedBox(
                          height: 50, //height of button
                          child: ElevatedButton(
                            child: const Text(
                              'Insp Cancel',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                            ),
                            onPressed: () {},
                          ),
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
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children: [
                  SizedBox(
                    width: 600,
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
                  const SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: _createLotWarehousingDataTable(),
                  ),
                ],
                ),
                const SizedBox(
                    width: 50.0
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        child: const Text(
                          'Add LOT',
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
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        child: const Text(
                          'LOT Save',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                    width: 25.0
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    child: const Text(
                      'Delete LOT',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
