import 'package:flutter/material.dart';

import 'package:kiosk_sf/route/route.dart' as route;

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:kiosk_sf/cubits/8010/receiving_lists_cubit.dart';
import 'package:kiosk_sf/cubits/8010/receiving_lists_states.dart';
import 'package:kiosk_sf/cubits/8010/receiving_list_detail_cubit.dart';
import 'package:kiosk_sf/cubits/8010/receiving_list_detail_states.dart';
import 'package:kiosk_sf/cubits/8010/lot_warehousing_lists_cubit.dart';
import 'package:kiosk_sf/cubits/8010/lot_warehousing_lists_states.dart';

import 'package:kiosk_sf/widgets/custom_progress_indicator.dart';

class EightyTenTabletPg2 extends StatefulWidget {
  late String recvNo;

  EightyTenTabletPg2({Key? key, required this.recvNo}) : super(key: key);


  @override
  _EightyTenTabletPg2State createState() => _EightyTenTabletPg2State();
}

class _EightyTenTabletPg2State extends State<EightyTenTabletPg2> {

  String accountName = 'jpim';
  String accountEmail = 'jpim@test.com';

  var datamap10Q = {};
  var datamap20Q = {};
  var combinedMap = {};
  var dataList = [];


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

  List<DataColumn> _createColumns_10Q() {
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
  List<DataRow> _createRows_10Q(receivingList) {

    List<DataRow> rcvRows = [];

    if(receivingList.length > 0) {
      for(int x=0; x < receivingList.length; x++ ) {

        datamap10Q['rcv_dt'] = receivingList[x].rcv_dt;
        datamap10Q['rcv_seq']  = receivingList[x].rcv_seq.toString();
        print("datamap10Q: ${datamap10Q['rcv_dt']} ${datamap10Q['rcv_seq']}");

        rcvRows.add(
            DataRow(
                onSelectChanged: (val) {
                  handleSelectedIndex((x+1));
                },
                cells: [
                  DataCell(
                      Text(receivingList[x].rcv_dt)
                  ),
                  DataCell(
                      Text(receivingList[x].rcv_seq.toString())
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

    } else {
      rcvRows.add(
          const DataRow(
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
                    Text('No rows to show.')
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
          )
      );
    }
    return rcvRows;
  }

  DataTable _createDataTable_10Q(state) {
    return DataTable(
      // showCheckboxColumn: false,
      columns: _createColumns_10Q(),
      rows: _createRows_10Q(state.rcvLists),
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
      // dataRowColor: MaterialStateColor.resolveWith(
      //         (states) => const Color(0xFFC5CAE9)
      // ),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF3F51B5),
          width: 3,
        ),
        borderRadius: BorderRadius.all(const Radius.circular(10)),
      ),
    );
  }

  List<DataColumn> _createColumns_20Q() {
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
      // DataColumn(
      //   label: Checkbox(
      //     value: false, onChanged: (bool? value){value = value;},
      //   ),
      // ),
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

  List<DataRow> _createRows_20Q(rcvListDetail) {

    List<DataRow> rcvDetailRows = [];

    if(rcvListDetail.length > 0) {
      for(int x=0; x < rcvListDetail.length; x++ ) {

        datamap20Q['dtlSeq'] = rcvListDetail[x].dtl_seq.toString();
        combinedMap['rcv_dt'] = datamap10Q['rcv_dt'];
        combinedMap['rcv_seq'] = datamap10Q['rcv_seq'];
        combinedMap['dtlSeq'] = datamap20Q['dtlSeq'];
        dataList.add(combinedMap);
        print('combinedMap: $combinedMap');
        print('dataList: $dataList');

        rcvDetailRows.add(
            DataRow(
                onSelectChanged: (val) {
                  handleSelectedIndex((x+1));
                },
                cells: [
                  DataCell(
                      Text('${x+1}')
                  ),
                  DataCell(
                      Text(rcvListDetail[x].dtl_seq.toString())
                  ),
                  DataCell(
                      Text(rcvListDetail[x].rcv_status_nm)
                  ),
                  DataCell(
                      Text(rcvListDetail[x].item_cd)
                  ),
                  DataCell(
                      Text(rcvListDetail[x].item_nm)
                  ),
                  DataCell(
                      Text(rcvListDetail[x].item_unit)
                  ),
                  DataCell(
                      Text(rcvListDetail[x].item_mng_unit_nm)
                  ),
                  DataCell(
                      Text(rcvListDetail[x].vld_mng_type_nm)
                  ),
                  DataCell(
                      Text(rcvListDetail[x].vld_day.toString())
                  ),
                  DataCell(
                      Text(rcvListDetail[x].ord_qty.toString())
                  ),
                  DataCell(
                      Text(rcvListDetail[x].rcv_qty.toString())
                  ),
                  DataCell(
                      Text(rcvListDetail[x].insp_qty.toString())
                  ),
                  DataCell(
                      Text(rcvListDetail[x].keep_loc.toString())
                  ),
                ]
            )
        );
      }

    } else {
      rcvDetailRows.add(
          const DataRow(
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
                    Text('No rows to show.')
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
          )
      );
    }
    return rcvDetailRows;

    // return [
    //   const DataRow(
    //       cells: [
    //         DataCell(
    //           Text('1',
    //             style: TextStyle(
    //               fontSize: 22.0,
    //             ),
    //           ),
    //         ),
    //         DataCell(
    //           Icon(Icons.check_box_outline_blank),
    //         ),
    //         DataCell(
    //           Text('2',
    //             style: TextStyle(
    //               fontSize: 22.0,
    //             ),
    //           ),
    //         ),
    //         DataCell(
    //           Text('입고등록',
    //             style: TextStyle(
    //               fontSize: 22.0,
    //             ),
    //           ),
    //         ),
    //         DataCell(
    //           Text('21000003',
    //             style: TextStyle(
    //               fontSize: 22.0,
    //             ),
    //           ),
    //         ),
    //         DataCell(
    //           Text('쇠비름',
    //             style: TextStyle(
    //               fontSize: 22.0,
    //             ),
    //           ),
    //         ),
    //         DataCell(
    //           Text('5 KG',
    //             style: TextStyle(
    //               fontSize: 22.0,
    //             ),
    //           ),
    //         ),
    //         DataCell(
    //           Text('kg',
    //             style: TextStyle(
    //               fontSize: 22.0,
    //             ),
    //           ),
    //         ),
    //         DataCell(
    //           Text('유통기한',
    //             style: TextStyle(
    //               fontSize: 22.0,
    //             ),
    //           ),
    //         ),
    //         DataCell(
    //           Text('365',
    //             style: TextStyle(
    //               fontSize: 22.0,
    //             ),
    //           ),
    //         ),
    //         DataCell(
    //           Text('0',
    //             style: TextStyle(
    //               fontSize: 22.0,
    //             ),
    //           ),
    //         ),
    //         DataCell(
    //           Text('19',
    //             style: TextStyle(
    //               fontSize: 22.0,
    //             ),
    //           ),
    //         ),
    //         DataCell(
    //           Text('4',
    //             style: TextStyle(
    //               fontSize: 22.0,
    //             ),
    //           ),
    //         ),
    //         DataCell(
    //           Text('B-1-03',
    //             style: TextStyle(
    //               fontSize: 22.0,
    //             ),
    //           ),
    //         ),
    //       ]
    //   ),
    // ];
  }

  DataTable _createDataTable_20Q(state) {
    return DataTable(
      columns: _createColumns_20Q(),
      rows: _createRows_20Q(state.rcvListDetail),
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
      // dataRowColor: MaterialStateColor.resolveWith(
      //         (states) => const Color(0xFFC5CAE9)
      // ),
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

  List<DataRow> _createLotWarehousingRows(lotWarehousingLists) {

    int selectedIndex = -1;

    List<DataRow> lotWarehousingRows = [];

    for(int x=0; x < lotWarehousingLists.length; x++ ) {
      lotWarehousingRows.add(
          DataRow(
              selected: x == selectedIndex,
              onSelectChanged: (val) {
                // handleSelectedIndex((x+1));
                setState(() {
                  selectedIndex = x;
                });
              },
              cells: [
                DataCell(
                    Text('${x+1}')
                ),
                DataCell(
                    Text(lotWarehousingLists[x].lot_seq.toString())
                ),
                DataCell(
                    Text(lotWarehousingLists[x].vld_dt,
                      style: const TextStyle(
                      fontSize: 15.0,
                    ),)
                ),
                DataCell(
                    Text(lotWarehousingLists[x].lot_no)
                ),
                DataCell(
                    Text(lotWarehousingLists[x].rcv_qty.toString())
                ),
              ]
          )
      );
    }
    return lotWarehousingRows;
  }

  DataTable _createLotWarehousingDataTable(state) {
    
    return DataTable(
      columns: _createLotWarehousingColumns(),
      rows: _createLotWarehousingRows(state.lotWarehousingLists),
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
      // dataRowColor: MaterialStateColor.resolveWith(
      //         (states) => const Color(0xFFC5CAE9)
      // ),
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
        body: MultiBlocProvider(
          providers: [
            BlocProvider<ReceivingListsCubit>(
              create: (context) => ReceivingListsCubit()..getRcvwork8010F_10Q(widget.recvNo),
            ),
            //..getRcvwork8010F_20Q('20211230', '2')
            BlocProvider<ReceivingListDetailCubit>(
              create: (context) => ReceivingListDetailCubit(),
            ),
            //..getRcvWork8010F_30Q('20211230', '2', '1')
            BlocProvider<LotWarehousingListsCubit>(
              create: (context) => LotWarehousingListsCubit(),
            ),
          ],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Builder(
                builder: (context) {
                  return SingleChildScrollView(
                      child: BlocBuilder<ReceivingListsCubit, ReceivingListsStates>(
                        // listener: (context, state) {
                        //   if (state is rlLoadedState) {
                        //     context.read<ReceivingListDetailCubit>().getRcvwork8010F_20Q(datamap10Q['rcv_dt'], datamap10Q['rcv_seq']);
                        //     print("10Q listener\ndatamap10Q['rcv_dt']: ${datamap10Q['rcv_dt']}");
                        //     //BlocProvider.of<ReceivingListDetailCubit>(context).getRcvwork8010F_20Q(datamap10Q['rcv_dt'], datamap10Q['rcv_seq']);
                        //   }
                        // },
                        builder: (context, state) {
                          //BlocProvider.of<ReceivingListDetailCubit>(context).getRcvwork8010F_20Q(datamap10Q['rcv_dt'], datamap10Q['rcv_seq']);
                          if(state is rlLoadingState) {
                            return const CustomProgressIndicator();
                          } else if(state is rlLoadedState) {
                            return _createDataTable_10Q(state);
                          } else {
                            return Text('No Rows to show');
                          }
                        },
                      )
                  );
                }
              ),
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
                            'Items Ordered To Be Received',
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
                    child: BlocBuilder<ReceivingListDetailCubit, ReceivingListDetailStates>(
                        // listener: (context, state) {
                        //   if(state is rldLoadingState) {
                        //     print('listener 20Q');
                        //     print("datamap10Q['rcv_dt']: ${datamap10Q['rcv_dt']}");
                        //     context.read<ReceivingListDetailCubit>().getRcvwork8010F_20Q(datamap10Q['rcv_dt'], datamap10Q['rcv_seq']);
                        //   }
                        // },
                        builder: (context, state) {
                          context.read<ReceivingListDetailCubit>().getRcvwork8010F_20Q(datamap10Q['rcv_dt'], datamap10Q['rcv_seq']);
                          if(state is rldLoadingState) {
                            return const CustomProgressIndicator();
                          } else if(state is rldLoadedState) {
                            return _createDataTable_20Q(state);
                          } else {
                            return Text('No Rows to show');
                          }
                        }
                    ),
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
                            //CommonButton(title: 'Delete LOT', buttonType: buttonType.delete, onPressed: () {  }),
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
                  child: BlocBuilder<LotWarehousingListsCubit, LotWarehousingListsStates>(
                    builder: (context, state) {
                      if(state is lwlLoadingState) {
                        return const CustomProgressIndicator();
                      } else if(state is lwlLoadedState) {
                        return _createLotWarehousingDataTable(state);
                      } else {
                        return const Text('No Rows to show');
                      }
                    }
                  ),
                ),
              ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
