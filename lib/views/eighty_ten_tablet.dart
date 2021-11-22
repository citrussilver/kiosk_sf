import 'package:flutter/material.dart';
import 'package:kiosk_sf/navbar.dart';

class EightyTenTablet extends StatefulWidget {
  const EightyTenTablet({Key? key}) : super(key: key);

  @override
  _EightyTenTabletState createState() => _EightyTenTabletState();
}

class _EightyTenTabletState extends State<EightyTenTablet> {

  final startDateController = TextEditingController();
  final endDateController = TextEditingController();

  String dropdownValue = 'All';

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    startDateController.dispose();
    endDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String accountName = 'jpim';
    String accountEmail = 'jpim@test.com';

    bool visibilityFlag = false;

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: const Text('8010 - 입고 검수 등록'),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                    accountName,
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  accountEmail: Text(
                    accountEmail,
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  currentAccountPicture: ClipOval(
                    child: Image.asset('images/429x417_worker.jpg'),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Color(0xFF536dfe),
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.pageview,
                    color: Color(0xFF536dfe),
                  ),
                  title: Text(
                    '입고 등록 (8010F)',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.assignment,
                    color: Color(0xFF536dfe),
                  ),
                  title: Text(
                    '원재료투입 등록 (8020F)',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.assessment,
                    color: Color(0xFF536dfe),
                  ),
                  title: Text(
                    '생산/포장 실적 등록 (8040F)',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.view_comfy,
                    color: Color(0xFF536dfe),
                  ),
                  title: Text(
                    '출고검수 등록 (8050F)',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.settings_input_component,
                    color: Color(0xFF536dfe),
                  ),
                  title: Text(
                    '생산작업 가동 (8060F)',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.chrome_reader_mode,
                    color: Color(0xFF536dfe),
                  ),
                  title: Text(
                    '생산실적 등록 (8070F)',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.description,
                    color: Color(0xFF536dfe),
                  ),
                  title: Text(
                    '포장실적 등록 (8080F)',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Search Form
                SizedBox(
                  width: 600.0,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: <Widget> [
                          const Text(
                            '입고번호',
                            style: TextStyle(
                              fontSize: 22.0,
                            ),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          SizedBox(
                            height: 50, //height of button
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  visibilityFlag = true;
                                  print('Button tapped.');
                                });
                              },
                              child: const Text(
                                '입고번호 검색',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 1200.0,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
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
                              // Date picker Start date
                              SizedBox(
                                width: 135,
                                child: TextField(
                                  controller: startDateController,
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
                                    startDateController.text = startDate.toString().substring(0,10);
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              // Date picker End date
                              SizedBox(
                                width: 135,
                                child: TextField(
                                  controller: endDateController,
                                  style: const TextStyle(
                                    fontSize: 20.0,
                                  ),
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),

                                  ),
                                  onTap: () async {
                                    var endDate =  await showDatePicker(
                                        context: context,
                                        initialDate:DateTime.now(),
                                        firstDate:DateTime(1900),
                                        lastDate: DateTime(2100));
                                    endDateController.text = endDate.toString().substring(0,10);
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              const Text(
                                '입고유형',
                                style: TextStyle(
                                  fontSize: 22.0,
                                ),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    iconSize: 24,
                                    elevation: 16,
                                    style: const TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20.0,
                                    ),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.indigo,
                                    ),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue!;
                                      });
                                    },
                                    items: <String>['All','매입입고', '사급입고', '기타입고']
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              // Customer
                              const Text(
                                '거래처',
                                style: TextStyle(
                                  fontSize: 22.0,
                                ),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              const SizedBox(
                                width: 100.0,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              Ink(
                                decoration: const ShapeDecoration(
                                  color: Colors.lightBlue,
                                  shape: CircleBorder(),
                                ),
                                child: IconButton(
                                    icon: const Icon(Icons.find_in_page),
                                    color: Colors.white,
                                    onPressed: () {}
                                ),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              const SizedBox(
                                width: 150.0,
                                child: TextField(
                                  enabled: false,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    fillColor: Colors.grey,
                                    filled: true,
                                  ),
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              SizedBox(
                                height: 50, //height of button
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    '검색',
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
                  ],
                ),
                // Datatable
                Center(
                  child: DataTable(
                    columns: const <DataColumn>[
                      DataColumn(
                        label: Text(
                          'No',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          '입고일자',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          '입고순번',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          '진행상태',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          '거래처',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          '거래처명',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          '입고유형',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          '품목수',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                    ],
                    rows: const <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(
                            Text('1',
                              style: TextStyle(
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                          DataCell(
                            Text('2021-10-11',
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
                          DataCell(
                            Text('입고등록',
                              style: TextStyle(
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                          DataCell(
                            Text('40032',
                              style: TextStyle(
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                          DataCell(
                            Text('Albedo’s Alchemy',
                              style: TextStyle(
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                          DataCell(
                            Text('매입입고',
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
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}