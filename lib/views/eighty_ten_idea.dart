import 'package:flutter/material.dart';
import 'package:kiosk_sf/route/route.dart' as route;
import 'package:kiosk_sf/services/data_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:kiosk_sf/cubits/users_cubit.dart';
import 'package:kiosk_sf/models/user.dart';


import 'package:kiosk_sf/models/receiving_list.dart';
import 'package:kiosk_sf/cubits/rcvwork_8011P_cubit.dart';

class EightyTenIdea extends StatefulWidget {

  const EightyTenIdea({Key? key, Object? arguments}) : super(key: key);

  @override
  _EightyTenIdeaState createState() => _EightyTenIdeaState();
}

class _EightyTenIdeaState extends State<EightyTenIdea> {

  final startDateController = TextEditingController();
  final endDateController = TextEditingController();
  final rcvNoSearchBoxController = TextEditingController();

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
    rcvNoSearchBoxController.dispose();
    super.dispose();
  }

  void toggleRcvListTable() {
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
      if (val == 2) {
        Navigator.pushNamed(context, route.eightyTenTabletPg2,
          arguments: {
            'no': '1',
            'date_recvd': '2021-09-09',
            'recv_no': '1001A20211011001',
            'recv_status': 'Receiving Registration',
            'acct_code': '70030',
            'acct_name': 'Xiangling',
            'item_cnt': '1'
          },);
      }

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
          selected: 1 == selectedIndex,
          onSelectChanged: (val) {
            handleSelectedIndex(1);
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
              Text('72330',
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
          selected: 2 == selectedIndex,
          onSelectChanged: (val) {
            handleSelectedIndex(2);
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
              Text('74740',
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
          selected: 3 == selectedIndex,
          onSelectChanged: (val) {
            handleSelectedIndex(3);
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
              Text('76040',
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
          selected: 4 == selectedIndex,
          onSelectChanged: (val) {
            handleSelectedIndex(4);
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
          selected: 5 == selectedIndex,
          onSelectChanged: (val) {
            handleSelectedIndex(5);
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

  // Sample Hard-coded DataTable
  DataTable _createRcvListDataTable() {
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
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF3F51B5),
          width: 3,
        ),
        borderRadius: BorderRadius.all(const Radius.circular(10)),
      ),
    );
  }

  Widget _rcvListCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Receiving List',
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            const SizedBox(
                height: 10.0
            ),
            _createRcvListDataTable(),
          ],
        ),
      ),
    );
  }

  Widget _searchRcvNoCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Expanded(
              child: TextFormField(
                style: const TextStyle(
                  fontSize: 20.0,
                ),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search Receiving No.'
                ),
                controller: rcvNoSearchBoxController,
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            // Search Button
            SizedBox(
              height: 50, //height of button
              child: ElevatedButton(
                onPressed: () {
                  _tryCallProc();
                },
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
    );
  }

  Widget _dataTableContent(users) {
    final List<Map<String, String>> listOfColumns = [
      {"Name": "AAAAAA", "Number": "1", "State": "Yes"},
      {"Name": "BBBBBB", "Number": "2", "State": "no"},
      {"Name": "CCCCCC", "Number": "3", "State": "Yes"}
    ];

    return DataTable(
      showCheckboxColumn: false,
      columns: [
        DataColumn(
          label: Text(
            'ID',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
        DataColumn(
          label: Text(
            'Name',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
        DataColumn(
          label: Text(
            'Username',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
        DataColumn(
          label: Text(
            'Email',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
        DataColumn(
          label: Text(
            'Phone',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
        DataColumn(
          label: Text(
            'Website',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
      ],
      rows:
      //users[index].username
      users.map(
        ((element) => DataRow(
          cells: <DataCell>[
            DataCell(Text(element["id"])),
            DataCell(Text(element["name"])),
            DataCell(Text(element["username"])),
            DataCell(Text(element["email"])),
            DataCell(Text(element["phone"])),
            DataCell(Text(element["website"])),
          ],
        )),
      ).toList(),
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

  Widget _jsonPlaceholderTest(receivingList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Receiving List [${receivingList.length}]',
          style: const TextStyle(
            fontSize: 22.0,
            color: Colors.white,
          ),
        ),
        const SizedBox(
            height: 10.0
        ),
        _listViewContent(receivingList)
      ],
    );
  }

  Widget _listViewContent(receivingList) {
    return SizedBox(
      height: 500.0,
      child: ListView.builder(
        itemCount: receivingList.length,
        //shrinkWrap: true,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                title: Text('No: ${receivingList[index].rcv_no} Date: ${receivingList[index].rcv_dt}'),
                subtitle: Text('Item Count: ${receivingList[index].item_cnt}, Customer: ${receivingList[index].cust_nm}'),
                trailing: Icon(Icons.more_vert),
              )
          );
        },
      ),
    );
  }



  final _dataService = DataService();

  void _tryCallProc() async {
    SharedPreferences jsessionId = await SharedPreferences.getInstance();
    String? extractJsessionId = jsessionId.getString('jsessionid');
    final response = await _dataService.tryCallProc(extractJsessionId);
    if (response == 1) {
      print('response is 1');
    } else {
      print('response is NOT 1');
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
              automaticallyImplyLeading: true,
              title: const Text('8010 - Receipt Inspection Registration'),
              //title: const Text('jsonplaceholder API Retrieve (R) test'),
              leading: IconButton(icon: const Icon(Icons.arrow_back),
                onPressed:() => Navigator.pop(context, false),
              )
          ),
          body: BlocProvider<Rcvwork8011PCubit>(
            create: (context) => Rcvwork8011PCubit()..getReceivingLists(),
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                          width: 450.0,
                          child: _searchRcvNoCard()
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                          width: 450.0,
                          child: Card(
                            color: const Color(0xFF303f9f),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: BlocBuilder<Rcvwork8011PCubit, List<ReceivingList>>(
                                    builder: (context, receivingList) {
                                      //print(rcvWork8011P);
                                      if (receivingList.isEmpty) {
                                        return Center(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: const [
                                              CircularProgressIndicator(),
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              Text('Retrieving data...',
                                                style: TextStyle(
                                                  fontSize: 22.0,
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                      }
                                      return _jsonPlaceholderTest(receivingList);
                                    }
                                ),
                              )
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }
}
