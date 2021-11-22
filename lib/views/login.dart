import 'package:flutter/material.dart';
import 'package:kiosk_sf/route/route.dart' as route;

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFF303f9f),
        body: SafeArea(
          child: Center(
            child: LoginForm(),
          ),
        ),
      );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        //jpim
        const SizedBox(
          width: 300.0,
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Color(0xFFC5CAE9),
                filled: true,
                prefixIcon: Icon(Icons.account_box),
                hintText: 'Username'),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        //password
        const SizedBox(
          width: 300.0,
          child: TextField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              fillColor: Color(0xFFC5CAE9),
              filled: true,
              prefixIcon: Icon(Icons.vpn_key),
              hintText: 'Password',
            ),
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
            onPressed: () => Navigator.pushNamed(context, route.dashBoard),
          ),
        ),
      ],
    );
  }
}