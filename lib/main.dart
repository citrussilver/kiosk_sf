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
    return Scaffold(
      body: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 20.0,
            ),
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
                        MaterialPageRoute(builder: (context) => const EightyTen()),
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
      body: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 20.0,
            ),
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
                        MaterialPageRoute(builder: (context) => const EightyTen()),
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
                  accountName: Text(accountName),
                  accountEmail: Text(accountEmail),
                  currentAccountPicture: ClipOval(
                      child: Image.asset('images/429x417_worker.jpg'),
                  ),
                ),
                ListTile(),
                ListTile(),
                ListTile(),
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
                                                  border: OutlineInputBorder(),
                                                  hintText: '2021-11-17'
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
                                                padding: EdgeInsets.only(left: 20.0),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(),
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
                                                  border: OutlineInputBorder(),
                                                  fillColor: Colors.grey,
                                                  filled: true,
                                                  hintText: '001'
                                                ),
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
                                                padding: EdgeInsets.only(left: 20.0),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      border: OutlineInputBorder(),
                                                      fillColor: Colors.grey,
                                                      filled: true,
                                                      hintText: '입고 현장 작업용 업무'
                                                  ),
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
                                children: const <Widget> [
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
                                children: const <Widget> [
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
                                          hintText: '2021-11-17'
                                      ),
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
                                children: const <Widget> [
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
                                          hintText: '2021-11-17'
                                      ),
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


class eightySeventy extends StatelessWidget {
  const eightySeventy({Key? key}) : super(key: key);

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
                                      padding: const EdgeInsets.only(left: 0),
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
                                                border: OutlineInputBorder(),
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
                                              border: OutlineInputBorder(),
                                              fillColor: Colors.grey,
                                              filled: true,
                                              hintText: '품목명'
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
                                      padding: const EdgeInsets.only(left: 0),
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
                                                border: OutlineInputBorder(),
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
                                      padding: const EdgeInsets.only(left: 0),
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
                                                border: OutlineInputBorder(),
                                                fillColor: Colors.grey,
                                                filled: true,
                                                hintText: '30'
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
                            children: const <Widget> [
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
                            children: const <Widget> [
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
                                    hintText: '2021-11-17'
                                  ),
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
                            children: const <Widget> [
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
                                    hintText: '2021-11-17'
                                  ),
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

class eightySixty extends StatelessWidget {
  const eightySixty({Key? key}) : super(key: key);

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


// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           body: SafeArea(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: const <Widget>[
//                       Text('전체\n실적',
//                           style: TextStyle(
//                             fontSize: 50.0,
//                             fontWeight: FontWeight.bold,
//                           )),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 50.0,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: <Widget>[
//                       //1st Row
//                       Row(
//                         children: const <Widget>[
//                           Padding(
//                             padding: EdgeInsets.only(left: 15.0),
//                             child: Text(
//                               '지시수량',
//                               style: TextStyle(
//                                 fontSize: 22.0,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 15.0,
//                           ),
//                           SizedBox(
//                             width: 100.0,
//                             child: TextField(
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(),
//                                 fillColor: Colors.greenAccent,
//                                 filled: true,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       // 2nd row
//                       Row(
//                         children: const <Widget>[
//                           Text('실적(양품)',
//                               style: TextStyle(
//                                 fontSize: 22.0,
//                                 fontWeight: FontWeight.bold,
//                               )),
//                           SizedBox(
//                             width: 15.0,
//                           ),
//                           SizedBox(
//                             width: 100.0,
//                             child: TextField(
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(),
//                                 fillColor: Colors.lightBlueAccent,
//                                 filled: true,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       // 3rd Row
//                       Row(
//                         children: const <Widget>[
//                           Text(
//                             '실적(불량)',
//                             style: TextStyle(
//                               color: Colors.red,
//                               fontSize: 22.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 15.0,
//                           ),
//                           SizedBox(
//                             width: 100.0,
//                             child: TextField(
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(),
//                                 fillColor: Colors.lightBlueAccent,
//                                 filled: true,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       //4th row
//                       Row(
//                         children: const <Widget>[
//                           Text('실적(합계)',
//                               style: TextStyle(
//                                 fontSize: 22.0,
//                                 fontWeight: FontWeight.bold,
//                               )),
//                           SizedBox(
//                             width: 15.0,
//                           ),
//                           SizedBox(
//                             width: 100.0,
//                             child: TextField(
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(),
//                                 fillColor: Colors.redAccent,
//                                 filled: true,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: const <Widget>[
//                       Text('Other content',
//                           style: TextStyle(
//                             fontSize: 50.0,
//                             fontWeight: FontWeight.bold,
//                           )),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           )),
//     );
//   }
// }

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
