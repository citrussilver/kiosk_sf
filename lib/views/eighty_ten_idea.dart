import 'package:flutter/material.dart';
import 'package:kiosk_sf/route/route.dart' as route;
import 'package:kiosk_sf/services/data_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:kiosk_sf/models/receiving_list.dart';
import 'package:kiosk_sf/cubits/rcvwork_8011P_cubit.dart';
import 'package:kiosk_sf/cubits/receiving_lists_cubit.dart';
import 'package:kiosk_sf/cubits/receiving_lists_states.dart';
import 'package:kiosk_sf/widgets/custom_date_picker.dart';

class EightyTenIdea extends StatefulWidget {

  const EightyTenIdea({Key? key, Object? arguments}) : super(key: key);

  @override
  _EightyTenIdeaState createState() => _EightyTenIdeaState();
}

class _EightyTenIdeaState extends State<EightyTenIdea> {

  String dateNowString = DateTime.now().toString();
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


    if (val == 1) {
      Navigator.pushNamed(context, route.eightyTenTabletPg2,
        arguments: {
          'no': '1',
          'rcv_dt': '2021-09-09',
          'rcv_seq': '1',
          'recv_no': '1001A20211011001',
          'recv_status': 'Receiving Registration',
          'acct_code': '40032',
          'acct_name': "Albedo's Alchemy",
          'item_cnt': '1'
        },);
    }

    // setState(() {
    //   selectedIndex = val;
    //   print('selectedIndex is $val');
    //   if (val == 2) {
    //     Navigator.pushNamed(context, route.eightyTenTabletPg2,
    //       arguments: {
    //         'no': '1',
    //         'date_recvd': '2021-09-09',
    //         'recv_no': '1001A20211011001',
    //         'recv_status': 'Receiving Registration',
    //         'acct_code': '70030',
    //         'acct_name': 'Xiangling',
    //         'item_cnt': '1'
    //       },);
    //   }
    //
    // });
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
    print(receivingList);
    List<DataRow> rcvRows = [];

    for(int x=0; x < receivingList.length; x++ ) {
      // var mapObj = {
      //   "no": (x+1),
      //   "rcv_dt": receivingList[x].rcv_dt,
      //   "rcv_seq": receivingList[x].rcv_seq,
      //   "rcv_no": receivingList[x].rcv_no,
      //   "rcv_status_nm": receivingList[x].rcv_status_nm,
      //   "cust_cd": receivingList[x].cust_cd,
      //   "cust_nm": receivingList[x].cust_nm,
      //   "rcv_type_nm": receivingList[x].rcv_type_nm,
      //   "item_cnt": receivingList[x].item_cnt
      // };
      // mapObj.f
      // print(receivingList.fromJson());
      rcvRows.add(
          DataRow(
              onSelectChanged: (val) {
                handleSelectedIndex((x+1));
              },
              cells: [
                DataCell(
                    Text('${x+1}')
                ),
                DataCell(
                    Text(receivingList[x].rcv_dt)
                ),
                DataCell(
                    Text(receivingList[x].rcv_seq.toString())
                ),
                DataCell(
                    Text(receivingList[x].rcv_no)
                ),
                DataCell(
                    Text(receivingList[x].rcv_status_nm)
                ),
                DataCell(
                    Text(receivingList[x].cust_cd)
                ),
                DataCell(
                    Text(receivingList[x].cust_nm)
                ),
                DataCell(
                    Text(receivingList[x].rcv_type_nm)
                ),
                DataCell(
                    Text(receivingList[x].item_cnt.toString())
                ),
              ]
          )
      );
    }
    return rcvRows;
  }

  //kilo loco method
  // DataTable _createRcvListDataTable(receivingList) {
  //   return DataTable(
  //     showCheckboxColumn: false,
  //     columns: _createColumns(),
  //     rows: _rowsFromApi(receivingList),
  //     dividerThickness: 5,
  //     dataRowHeight: 80,
  //     showBottomBorder: true,
  //     headingTextStyle: const TextStyle(
  //         fontWeight: FontWeight.bold,
  //         color: Colors.white
  //     ),
  //     headingRowColor: MaterialStateProperty.resolveWith(
  //             (states) => const Color(0xFF3F51B5)
  //     ),
  //     dataRowColor: MaterialStateColor.resolveWith(
  //             (states) => const Color(0xFFC5CAE9)
  //     ),
  //     decoration: BoxDecoration(
  //       border: Border.all(
  //         color: const Color(0xFF3F51B5),
  //         width: 3,
  //       ),
  //       borderRadius: const BorderRadius.all(Radius.circular(10)),
  //     ),
  //   );
  // }

  DataTable _createRcvListDataTable(state) {
    print('state.runtimeType: ${state.runtimeType}');
    if(state.runtimeType.toString() == 'ReadyState') {
      print('if branch');
      return DataTable(
        showCheckboxColumn: false,
        columns: _createColumns(),
        rows: <DataRow>[
          DataRow(
              cells: <DataCell>[
                DataCell(
                    Text('')
                ),
                DataCell(
                    Text('')
                ),
                DataCell(
                    Text('')
                ),
                DataCell(
                    Text('')
                ),
                DataCell(
                    Text('')
                ),
                DataCell(
                    Text('')
                ),
                DataCell(
                    Text('')
                ),
                DataCell(
                    Text('')
                ),
                DataCell(
                    Text('')
                ),
              ]
          ),
        ],
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
    } else {
      print('else branch');
      return DataTable(
        showCheckboxColumn: false,
        columns: _createColumns(),
        rows: _rowsFromApi(state.rcvLists),
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
  }

  // PaginatedDataTable _createRcvListPDataTable (receivingList) {
  //
  //   return PaginatedDataTable(
  //       source: _rowsFromApi(receivingList),
  //       header: Text('RecevingList'),
  //       columns: _createColumns(),
  //       columnSpacing: 20,
  //       horizontalMargin: 10,
  //       rowsPerPage: 8,
  //       showCheckboxColumn: false,
  //     );
  // }

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

  Widget _searchCriteriaCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            const Text(
              '입고일자',
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            //CustomDatePicker(),
            SizedBox(
              width: 200,
              child: TextFormField(
                controller: startDateController,
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
                  startDateController.text = startDate.toString().substring(0,10);
                },
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            // Date picker End date
            // CustomDatePicker(),
            SizedBox(
              width: 200,
              child: TextFormField(
                controller: endDateController,
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
                  endDateController.text = startDate.toString().substring(0,10);
                },
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            // SizedBox(
            //   width: 250.0,
            //   child: TextFormField(
            //     style: const TextStyle(
            //       fontSize: 20.0,
            //     ),
            //     decoration: const InputDecoration(
            //         border: OutlineInputBorder(),
            //         prefixIcon: Icon(Icons.search),
            //         hintText: 'Search Receiving No.'
            //     ),
            //     controller: rcvNoSearchBoxController,
            //   ),
            // ),
            // const SizedBox(
            //   width: 15.0,
            // ),
            // Search Button
            SizedBox(
              height: 50, //height of button
              child: Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                    //_tryCallProc();
                    //BlocProvider.of<ReceivingListsCubit>(context).getData();
                      String currentDateStr = _getCurrentDate();
                      String startDateStr;
                      startDateStr = startDateController.text;
                      if(startDateStr.isNotEmpty) {
                        startDateStr = startDateStr.replaceAll('-', '');
                      } else {
                        startDateStr = currentDateStr;
                        print(startDateStr);
                      }

                      String endDateStr;
                      endDateStr = endDateController.text;
                      if(endDateStr.isNotEmpty) {
                        endDateStr = endDateStr.replaceAll('-', '');
                      } else {
                        endDateStr = currentDateStr;
                        print(startDateStr);
                      }

                      print('startDateStr: $startDateStr');
                      print('endDateController: $endDateStr');

                      BlocProvider.of<ReceivingListsCubit>(context).getData(startDateStr, endDateStr);
                  },
                    child: const Text(
                      'Search',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }
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
    String startDateStr = startDateController.text;
    String currentDateStr = _getCurrentDate();

    if(startDateStr != '') {
      startDateStr = startDateStr.replaceAll('-', '');
    } else {
      startDateStr = currentDateStr;
      print(startDateStr);
    }

    String endDateStr = endDateController.text;
    if(endDateStr != '') {
      endDateStr = endDateStr.replaceAll('-', '');
    } else {
      endDateStr = currentDateStr;
      print(endDateStr);
    }

    final response = await _dataService.tryCallProc(extractJsessionId, startDateStr, endDateStr );
    if (response != null) {
      print('response is not null');
      print(response.toString());
    } else {
      print('response is NOT 1');
    }
  }

  // main Widget
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
          body: BlocProvider<ReceivingListsCubit>(
            create: (context) => ReceivingListsCubit(),
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 900.0,
                        child: _searchCriteriaCard(),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SingleChildScrollView(
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: BlocBuilder<ReceivingListsCubit, ReceivingListsStates>(
                                  builder: (context, state) {
                                    if(state is LoadingState) {
                                      return Card(
                                        color: const Color(0xFF303f9f),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
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
                                        ),
                                      );
                                    } else if(state is LoadedState) {
                                      return _createRcvListDataTable(state);
                                    } else {
                                      return Text('No State');
                                    }
                                  }
                              ),
                            )
                        ),
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
