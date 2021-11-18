import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Kiosk SmartFactory',
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF303f9f),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: const Image(
                    image: AssetImage('images/robot_arms_260x208.jpg'),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'iUp MES Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                  width: 150.0,
                ),
                // const Card(
                //   color: Color(0xFFC5CAE9),
                //   margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                //   child: SizedBox(
                //     width: 300.0,
                //     child: ListTile(
                //       leading: Icon(
                //         Icons.account_box,
                //         color: Color(0xFF536dfe),
                //       ),
                //       title: Text('jpim',
                //         style: TextStyle(
                //           color: Color(0xFF212121),
                //           fontSize: 20.0,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                const SizedBox(
                  width: 300.0,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Color(0xFFC5CAE9),
                        filled: true,
                        prefixIcon: Icon(Icons.account_box),
                        hintText: 'jpim'),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const SizedBox(
                  width: 300.0,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Color(0xFFC5CAE9),
                        filled: true,
                        prefixIcon: Icon(Icons.vpn_key),
                        hintText: '********'),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 50, //height of button
                  width: 120, //width of button
                  child: ElevatedButton(
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MenuPage()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kiosk SmartFactory'),
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  // 8010
                  SizedBox(
                    height: 80, //height of button
                    width: 220, //width of button
                    child: ElevatedButton(
                      child: const Text(
                        '입고 등록',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EightyTenO()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 25.0,
              ),
              Column(
                children: [
                  // 8070
                  SizedBox(
                    height: 80, //height of button
                    width: 220, //width of button
                    child: ElevatedButton(
                      child: const Text(
                        '생산실적 등록',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        // Navigate to second route when tapped.
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // 8080
                  SizedBox(
                    height: 80, //height of button
                    width: 220, //width of button
                    child: ElevatedButton(
                      child: const Text(
                        '포장실적 등록',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        // Navigate to second route when tapped.
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // 8060
                  SizedBox(
                    height: 80, //height of button
                    width: 220, //width of button
                    child: ElevatedButton(
                      child: const Text(
                        '생산작업 가동',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        // Navigate to second route when tapped.
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // 8040
                  SizedBox(
                    height: 80, //height of button
                    width: 220, //width of button
                    child: ElevatedButton(
                      child: const Text(
                        '생산/포장 실적 등록',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        // Navigate to second route when tapped.
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // 8020
                  SizedBox(
                    height: 80, //height of button
                    width: 220, //width of button
                    child: ElevatedButton(
                      child: const Text(
                        '원재료투입 등록',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        // Navigate to second route when tapped.
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 25.0,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 80, //height of button
                    width: 220, //width of button
                    child: ElevatedButton(
                      child: const Text(
                        '출고검수 등록',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        // Navigate to second route when tapped.
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EightyTen extends StatefulWidget {
  const EightyTen({Key? key}) : super(key: key);

  @override
  _EightyTenState createState() => _EightyTenState();
}

class _EightyTenState extends State<EightyTen> {

  @override
  Widget build(BuildContext context) {
    String accountName = 'jpim';
    String accountEmail = 'jpim@test.com';

    final List<Map> _lotWarehousing = [
      {
        'no': '1',
        'queue': '001',
        'expiryDate': '2021-10-06',
        'lot': 'B-1-01',
        'inspectQty': '12',
      },
      {
        'no': '2',
        'queue': '002',
        'expiryDate': '2021-10-07',
        'lot': 'B-12-03',
        'inspectQty': '12',
      },
    ];

    List<DataColumn> _createColumns() {
      return [
        const DataColumn(label: Text('No',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),
        ),
        ),
        const DataColumn(label: Text('입고순번',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),
        ),
        ),
        const DataColumn(label: Text('유통기한',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),
        ),
        ),
        const DataColumn(label: Text('LOT',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),
        ),
        ),
        const DataColumn(label: Text('검수 수량',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),
        ),
        ),
      ];
    }
    List<DataRow> _createRows() {
      return _lotWarehousing
          .map((item) => DataRow(cells: [
        DataCell(Text(item['no'])),
        DataCell(Text(item['queue'])),
        DataCell(Text(item['expiryDate'])),
        DataCell(Text(item['lot'])),
        DataCell(Text(item['inspectQty'])),
      ]))
          .toList();
    }

    DataTable _createDataTable() {
      return DataTable(columns: _createColumns(), rows: _createRows());
    }

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
              children: <Widget>[
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black87, // red as border color
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 550.0,
                                    child: Column(
                                      children: <Widget>[
                                        //1st Row
                                        Row(
                                          children: const <Widget>[
                                            Text(
                                              '입고번호',
                                              style: TextStyle(
                                                fontSize: 22.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Icon(Icons.find_in_page),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Text(
                                              '입고일자',
                                              style: TextStyle(
                                                fontSize: 22.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    hintText: '2021-11-17'),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        // 2nd row
                                        Row(
                                          children: const <Widget>[
                                            Text('거래처',
                                                style: TextStyle(
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            SizedBox(
                                              width: 100.0,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 20.0),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    fillColor: Colors.grey,
                                                    filled: true,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        //1st Row
                                        Row(
                                          children: const <Widget>[
                                            Text(
                                              '입고순번',
                                              style: TextStyle(
                                                fontSize: 22.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    fillColor: Colors.grey,
                                                    filled: true,
                                                    hintText: '001'),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Text(
                                              '입고유형',
                                              style: TextStyle(
                                                fontSize: 22.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  fillColor: Colors.grey,
                                                  filled: true,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Text(
                                              '진행상태',
                                              style: TextStyle(
                                                fontSize: 22.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  fillColor: Colors.grey,
                                                  filled: true,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        // 2nd row
                                        Row(
                                          children: const <Widget>[
                                            Text(
                                              '비  고',
                                              style: TextStyle(
                                                fontSize: 22.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 20.0),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                      fillColor: Colors.grey,
                                                      filled: true,
                                                      hintText: '입고 현장 작업용 업무'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: const [
                            Icon(Icons.star),
                            Text(
                              '입고지시품목',
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
                                  'LOT 라벨 발행',
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
                                  '검수확정',
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
                                  '검수취소',
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
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    DataTable(
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
                          label: Icon(Icons.indeterminate_check_box),
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
                            '품목코드',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '품목명',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '규격',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '단위',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '관리일수',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '발주수량',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                        // DataColumn(
                        //   label: Text(
                        //     '입고수량',
                        //     style: TextStyle(
                        //       fontWeight: FontWeight.bold,
                        //       fontSize: 22.0,
                        //     ),
                        //   ),
                        // ),
                        // DataColumn(
                        //   label: Text(
                        //     '검수수량',
                        //     style: TextStyle(
                        //       fontWeight: FontWeight.bold,
                        //       fontSize: 22.0,
                        //     ),
                        //   ),
                        // ),
                        // DataColumn(
                        //   label: Text(
                        //     '입고위치',
                        //     style: TextStyle(
                        //       fontWeight: FontWeight.bold,
                        //       fontSize: 22.0,
                        //     ),
                        //   ),
                        // ),
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
                            DataCell(Icon(Icons.check_box)),
                            DataCell(
                              Text('1',
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
                            // DataCell(
                            //   Text('19',
                            //     style: TextStyle(
                            //       fontSize: 22.0,
                            //     ),
                            //   ),
                            // ),
                            // DataCell(
                            //   Text('4',
                            //     style: TextStyle(
                            //       fontSize: 22.0,
                            //     ),
                            //   ),
                            // ),
                            // DataCell(
                            //   Text('B-1-03',
                            //     style: TextStyle(
                            //       fontSize: 22.0,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(
                              Text('2',
                                style: TextStyle(
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                            DataCell(Icon(Icons.check_box_outline_blank)),
                            DataCell(
                              Text('1',
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
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Row(
                  children: [
                    DataTable(
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
                            '입고순번',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '유통기한',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'LOT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '검수 수량',
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
                              Text('001',
                                style: TextStyle(
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                            DataCell(
                              Text('2021-10-06',
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
                            DataCell(
                              Text('10',
                                style: TextStyle(
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(
                              Text('2',
                                style: TextStyle(
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                            DataCell(
                              Text('002',
                                style: TextStyle(
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                            DataCell(
                              Text('2021-11-10',
                                style: TextStyle(
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                            DataCell(
                              Text('F-2-72',
                                style: TextStyle(
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                            DataCell(
                              Text('10',
                                style: TextStyle(
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 50, //height of button
                          child: ElevatedButton(
                            child: const Text(
                              'LOT 추가',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        SizedBox(
                          height: 50, //height of button
                          child: ElevatedButton(
                            child: const Text(
                              'LOT 삭제',
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
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 50, //height of button
                          child: ElevatedButton(
                            child: const Text(
                              'LOT 저장',
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
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class EightyTenO extends StatefulWidget {
  const EightyTenO({Key? key}) : super(key: key);

  @override
  _EightyTenOState createState() => _EightyTenOState();
}

class _EightyTenOState extends State<EightyTenO> {
  @override
  Widget build(BuildContext context) {
    String accountName = 'jpim';
    String accountEmail = 'jpim@test.com';

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
            child: Center(
              child: SizedBox(
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
                            fontWeight: FontWeight.bold,
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
                              print('Button tapped.');
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
            ),
          ),
        )
    );
  }
}



class EightySeventy extends StatelessWidget {
  const EightySeventy({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text('8070 - 생산실적 등록'),
          ),
          body: SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    const SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black87, // red as border color
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        //1st Row
                                        Row(
                                          children: const <Widget>[
                                            Text(
                                              '지시번호',
                                              style: TextStyle(
                                                fontSize: 22.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        // 2nd row
                                        Row(
                                          children: const <Widget>[
                                            Text('생산품목',
                                                style: TextStyle(
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  fillColor: Colors.grey,
                                                  filled: true,
                                                  hintText: '11000001',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        // 3rd Row
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: Row(
                                            children: const <Widget>[
                                              Text(
                                                '환산중량',
                                                style: TextStyle(
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              Expanded(
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    fillColor: Colors.grey,
                                                    filled: true,
                                                    hintText: '1',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        //1st Row
                                        Row(
                                          children: const <Widget>[
                                            Text(
                                              '지시일자',
                                              style: TextStyle(
                                                fontSize: 22.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  fillColor: Colors.grey,
                                                  filled: true,
                                                  hintText: '11-16-2021',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        // 2nd row
                                        Row(
                                          children: const <Widget>[
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    fillColor: Colors.grey,
                                                    filled: true,
                                                    hintText: '품목명'),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        // 3rd Row
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: Row(
                                            children: const <Widget>[
                                              Text(
                                                '유효기한일수',
                                                style: TextStyle(
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5.0,
                                              ),
                                              Expanded(
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    fillColor: Colors.grey,
                                                    filled: true,
                                                    hintText: '365',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        //1st Row
                                        Row(
                                          children: const <Widget>[
                                            Text(
                                              '지시순번',
                                              style: TextStyle(
                                                fontSize: 22.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  fillColor: Colors.grey,
                                                  filled: true,
                                                  hintText: '001',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        // 2nd row
                                        Row(
                                          children: const <Widget>[
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  fillColor: Colors.grey,
                                                  filled: true,
                                                  hintText: '20g * 30포',
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  fillColor: Colors.grey,
                                                  filled: true,
                                                  hintText: 'SET',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        // 3rd Row
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: Row(
                                            children: const <Widget>[
                                              Text(
                                                '제품구성수량',
                                                style: TextStyle(
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15.0,
                                              ),
                                              Expanded(
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                      fillColor: Colors.grey,
                                                      filled: true,
                                                      hintText: '30'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black87, // red as border color
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Column(
                                  children: const <Widget>[
                                    Text('전체\n실적',
                                        style: TextStyle(
                                          fontSize: 50.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  width: 50.0,
                                ),
                                Column(
                                  children: <Widget>[
                                    //1st Row
                                    Row(
                                      children: const <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(left: 15.0),
                                          child: Text(
                                            '지시수량',
                                            style: TextStyle(
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15.0,
                                        ),
                                        SizedBox(
                                          width: 100.0,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              fillColor: Colors.greenAccent,
                                              filled: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    // 2nd row
                                    Row(
                                      children: const <Widget>[
                                        Text('실적(양품)',
                                            style: TextStyle(
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 15.0,
                                        ),
                                        SizedBox(
                                          width: 100.0,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              fillColor: Colors.lightBlueAccent,
                                              filled: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    // 3rd Row
                                    Row(
                                      children: const <Widget>[
                                        Text(
                                          '실적(불량)',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15.0,
                                        ),
                                        SizedBox(
                                          width: 100.0,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              fillColor: Colors.lightBlueAccent,
                                              filled: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    //4th row
                                    Row(
                                      children: const <Widget>[
                                        Text('실적(합계)',
                                            style: TextStyle(
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 15.0,
                                        ),
                                        SizedBox(
                                          width: 100.0,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              fillColor: Colors.redAccent,
                                              filled: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('작업시작'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 50.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('작업완료'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 300.0,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: const <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Text('수기 등록',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  SizedBox(
                                    width: 100.0,
                                  ),
                                  Text('Barcode SCAN',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        fillColor: Colors.yellowAccent,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100.0,
                                  ),
                                  Text('작업자',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        fillColor: Colors.grey,
                                        filled: true,
                                        hintText: '홍길동',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: const <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Text('실적일자',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  SizedBox(
                                    width: 120.0,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: '2021-11-17'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40.0,
                                  ),
                                  Text('실적순번',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  SizedBox(
                                    width: 100.0,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        fillColor: Colors.grey,
                                        filled: true,
                                        hintText: '자동',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                ],
                              ),
                              Row(
                                children: const <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Text('공장코드',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  SizedBox(
                                    width: 120.0,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        fillColor: Colors.grey,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40.0,
                                  ),
                                  Text('생산라인',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  SizedBox(
                                    width: 100.0,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        fillColor: Colors.grey,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40.0,
                                  ),
                                  Text('유효기한',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  SizedBox(
                                    width: 120.0,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          fillColor: Colors.grey,
                                          filled: true,
                                          hintText: '2021-11-17'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black87, // red as border color
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Row(
                                  children: const <Widget>[
                                    Text('작업자 실적',
                                        style: TextStyle(
                                          fontSize: 40.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50.0,
                                ),
                                Column(
                                  children: <Widget>[
                                    // 2nd row
                                    Row(
                                      children: const <Widget>[
                                        Text('실적(불량)',
                                            style: TextStyle(
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 15.0,
                                        ),
                                        SizedBox(
                                          width: 100.0,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              fillColor: Colors.lightBlueAccent,
                                              filled: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    // 3rd Row
                                    Row(
                                      children: const <Widget>[
                                        Text(
                                          '실적(불량)',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15.0,
                                        ),
                                        SizedBox(
                                          width: 100.0,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              fillColor: Colors.lightBlueAccent,
                                              filled: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    //4th row
                                    Row(
                                      children: const <Widget>[
                                        Text('실적(합계)',
                                            style: TextStyle(
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 15.0,
                                        ),
                                        SizedBox(
                                          width: 100.0,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              fillColor: Colors.redAccent,
                                              filled: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class EightySixty extends StatelessWidget {
  const EightySixty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text('8060 - 생산작업 가동'),
          ),
          body: SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('조회'),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('X 닫기'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black87, // red as border color
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: const [
                            Text('생산지시일자',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
