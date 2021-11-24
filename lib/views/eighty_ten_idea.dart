import 'package:flutter/material.dart';
import 'package:kiosk_sf/route/route.dart' as route;

class EightyTenIdea extends StatefulWidget {
  const EightyTenIdea({Key? key}) : super(key: key);

  @override
  _EightyTenIdeaState createState() => _EightyTenIdeaState();
}

class _EightyTenIdeaState extends State<EightyTenIdea> {

  final startDateController = TextEditingController();
  final endDateController = TextEditingController();

  String accountName = 'jpim';
  String accountEmail = 'jpim@test.com';

  bool _isSearchFormVisible = false;
  bool _isDataTableVisible = false;

  String dropdownValue = 'All';

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    startDateController.dispose();
    endDateController.dispose();
    super.dispose();
  }

  void toggleSearchForm() {
    setState(() {
      _isSearchFormVisible = !_isSearchFormVisible;
    });
  }

  void toggleDataTable() {
    setState(() {
      _isDataTableVisible = !_isDataTableVisible;
    });
  }

  int selectedIndex = -1;

  void handleSelectedIndex(int val) {
    setState(() {
      selectedIndex = val;
      print('selectedIndex is $val');
      Navigator.pushNamed(context, route.eightyTenTabletPg2);
    });
    // Useful for navigating to different data
    // if(val == 0) {
    //   Navigator.pushNamed(context, route.eightyTenTabletPg2)
    // }
  }

  void getSelectedRowInfo() {
    print('Selected Item Row Name Here...');
  }

  List<DataColumn> _createColumns() {
    return [
      const DataColumn(
        label: Text(
          'No',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Date Received',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Receiving No.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Receiving Status',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Account Code',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Account',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Item Count',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(
          selected: 0 == selectedIndex,
          onSelectChanged: (val) {
            handleSelectedIndex(0);
          },
          cells: [
            DataCell(
              Text('1',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('2021-10-11',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('1001A20211011001',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('Receiving Registration',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white,
                    background: Paint()
                      ..strokeWidth = 20.0
                      ..color = const Color(0xFFf19f00)
                      ..style = PaintingStyle.stroke
                      ..strokeJoin = StrokeJoin.round
                ),
              ),
            ),
            DataCell(
              Text('40032',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('Albedo’s Alchemy',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('3',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ]
      ),
      DataRow(
          selected: 0 == selectedIndex,
          onSelectChanged: (val) {
            handleSelectedIndex(0);
          },
          cells: [
            DataCell(
              Text('2',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('2021-09-09',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('1001A20210909001',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('Receiving Registration',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white,
                    background: Paint()
                      ..strokeWidth = 20.0
                      ..color = const Color(0xFFf19f00)
                      ..style = PaintingStyle.stroke
                      ..strokeJoin = StrokeJoin.round
                ),
              ),
            ),
            DataCell(
              Text('40030',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('Xiangling',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('2',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ]
      ),
      DataRow(
          selected: 0 == selectedIndex,
          onSelectChanged: (val) {
            handleSelectedIndex(0);
          },
          cells: [
            DataCell(
              Text('3',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('2021-09-09',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('1001A20210909002',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('Receiving Registration',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white,
                    background: Paint()
                      ..strokeWidth = 20.0
                      ..color = const Color(0xFFf19f00)
                      ..style = PaintingStyle.stroke
                      ..strokeJoin = StrokeJoin.round
                ),
              ),
            ),
            DataCell(
              Text('40031',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('Amber',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('2',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ]
      ),
      DataRow(
          selected: 0 == selectedIndex,
          onSelectChanged: (val) {
            handleSelectedIndex(0);
          },
          cells: [
            DataCell(
              Text('4',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('2021-09-09',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('1001A20210909002',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('Receiving Registration',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white,
                    background: Paint()
                      ..strokeWidth = 20.0
                      ..color = const Color(0xFFf19f00)
                      ..style = PaintingStyle.stroke
                      ..strokeJoin = StrokeJoin.round
                ),
              ),
            ),
            DataCell(
              Text('77790',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('Ganyu',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('2',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ]
      ),
      DataRow(
          selected: 0 == selectedIndex,
          onSelectChanged: (val) {
            handleSelectedIndex(0);
          },
          cells: [
            DataCell(
              Text('5',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('2021-09-09',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('1001A20210909003',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('Inspection Completed',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white,
                    background: Paint()
                      ..strokeWidth = 20.0
                      ..color = Colors.green
                      ..style = PaintingStyle.stroke
                      ..strokeJoin = StrokeJoin.round
                ),
              ),
            ),
            DataCell(
              Text('77794',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('Yunjin',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            DataCell(
              Text('2',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ]
      ),
    ];
  }

  DataTable _createDataTable() {
    return DataTable(
      showCheckboxColumn: false,
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
    );
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
              automaticallyImplyLeading: true,
              title: const Text('8010 - 입고 검수 등록'),
              leading: IconButton(icon: const Icon(Icons.arrow_back),
                onPressed:() => Navigator.pop(context, false),
              )
          ),
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 600.0,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget> [
                            const Expanded(
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.search),
                                  hintText: 'Search Receiving No.'
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            SizedBox(
                              height: 50, //height of button
                              child: ElevatedButton(
                                onPressed: toggleSearchForm,
                                child: const Text(
                                  'Search',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Last 5 recent records',
                            style: TextStyle(
                              fontSize: 22.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0
                          ),
                          _createDataTable(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
