import 'package:flutter/material.dart';
import 'package:kiosk_sf/route/route.dart' as route;
import 'package:kiosk_sf/navbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kiosk SmartFactory'),
      ),
      drawer: const NavBar(),
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
                      onPressed: () => Navigator.pushNamed(context, route.eightyTen),
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