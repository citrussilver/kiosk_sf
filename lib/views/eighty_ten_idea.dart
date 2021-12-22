import 'package:flutter/material.dart';
import 'package:kiosk_sf/route/route.dart' as route;
import 'package:kiosk_sf/services/data_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_bloc/flutter_bloc.dart';


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
          'Queue',
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
          'Account Name',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Receiving Type',
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

  List<DataRow> _rowsFromApi(receivingList) {
    //need to map to dynamically parse with .map<DataRow>
    final sampleData = receivingList.map((h) => {
      "rcv_dt": h.rcv_dt,
      "rcv_seq": h.rcv_seq,
      "rcv_no": h.rcv_no,
      "rcv_status_nm": h.rcv_status_nm,
      "cust_cd": h.cust_cd,
      "cust_cd": h.cust_cd,
      "cust_nm": h.cust_nm,
      "item_cnt": h.item_cnt,
      "rcv_type_nm": h.rcv_type_nm,
      "remark": h.remark,
    }).toList();

    //print(sampleData.runtimeType);

    return sampleData.map<DataRow>((e) => DataRow(cells: [
            DataCell(Text(e['rcv_seq'].toString())),
            DataCell(Text(e['rcv_dt'])),
            DataCell(Text(e['rcv_seq'].toString())),
            DataCell(Text(e['rcv_no'])),
            DataCell(Text(e['rcv_status_nm'])),
            DataCell(Text(e['cust_cd'])),
            DataCell(Text(e['cust_nm'])),
            DataCell(Text(e['rcv_type_nm'])),
            DataCell(Text(e['item_cnt'].toString())),
          ],
        ),
      ).toList();
  }


  DataTable _createRcvListDataTable(receivingList) {
    return DataTable(
      showCheckboxColumn: false,
      columns: _createColumns(),
      rows: _rowsFromApi(receivingList),
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
        borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                subtitle: Text('Account: ${receivingList[index].cust_nm}, Item Count: ${receivingList[index].item_cnt}'),
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
              automaticallyImplyLeading: true,
              title: const Text('8010 - Receipt Inspection Registration'),
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
                          width: 1200.0,
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
                                  
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Receiving List [${receivingList.length}]',
                                        style: const TextStyle(
                                          fontSize: 22.0,
                                        ),
                                      ),
                                      const SizedBox(
                                          height: 10.0
                                      ),
                                      SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: _createRcvListDataTable(receivingList)),
                                    ],
                                  );
                                }
                            ),
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
