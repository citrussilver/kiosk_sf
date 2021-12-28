import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kiosk_sf/services/mes_server_connection.dart';
import 'package:kiosk_sf/models/gms_user.dart';

import 'package:kiosk_sf/models/receiving_list.dart';
import 'package:kiosk_sf/models/post.dart';

import 'package:kiosk_sf/models/user.dart';

import 'package:shared_preferences/shared_preferences.dart';

class DataService {
  // Future<String> makeApiRequest() async {
  //   final uri = Uri.https('jsonplaceholder.typicode.com', '/posts');
  //   final response = await http.get(uri);
  //   return response.body;
  // }

  String loginMSG = "";
  String lang = "ENG";

  Future<int> mesLogin(user, pass) async {
    int isSuccess = 0;
    MESServerConnection mesConn = MESServerConnection();
    String address = "http://192.168.0.188:8081/iUp_MES/baseinfo/login.do";
    final response = await mesConn.connectAPI(HttpMethod.POST, address, {
      "paramMap": {
        "USERID": user,
        "PASSWORD": pass,
        "LANGUAGE": "ENG",
        "LOGINYN": "Y"
      }
    });

    //print('response statusCode is : ${response.statusCode}');

    if (response.statusCode == 200) {
      Map<String, dynamic> reqInfo = jsonDecode(response.body);
      //print('response.body is: ${jsonDecode(response.body)["dataset"]["ds_loginInfo"]}');

      String rawJsessionId = response.headers['set-cookie'].toString();
      String extractJsessionId = rawJsessionId.substring(11,43);
      SharedPreferences loginInfoSession = await SharedPreferences.getInstance();
      await loginInfoSession.setString('jsessionid', extractJsessionId );

      //print('from res headers: ${rawJsessionId}\nsharedpref: ${loginInfoSession.getString('jsessionid')}');

      if (reqInfo["code"] < 0) {
        loginMSG = reqInfo["code"] == -1
            ? "Account is currently used."
            : "Account session has expired.";
        return reqInfo["code"];
      }

      List<dynamic> loginfo = reqInfo["dataset"]["ds_loginInfo"];


      await loginInfoSession.setString('ctkey', loginfo[0]['CTKEY'] );
      //print('ctkey is: ${loginInfoSession.getString('ctkey')}');

      //print(loginfo[0]["LOGINYN"].toString());
      if (loginfo.isEmpty ||
          loginfo.isEmpty ||
          loginfo[0]["LOGINYN"] == "N") {
        loginMSG = "The username or password you entered is incorrect.";
        return 0;
      }

      if (loginfo[0]["LOGINYN"].toString() == "Y") {
        Map<String, dynamic> dataset = reqInfo["dataset"];

        loginfo[0]["LAKEY"] = lang;
        loginfo[0]["PASSWORD"] = pass;

        dataset["ds_loginInfo"] = loginfo;

        GmsUser userinfo = GmsUser(dataset);
        //userinfo.checkDataSets();
        isSuccess = 1;
      }
    }
    else {
      print('status code is: ${response.statusCode}');
    }

    return isSuccess;
  }

  Future<List<ReceivingList>> tryCallProc(jsessionid, String fromDate, String toDate ) async {
    try {
      // final uri = Uri.https( _baseUrl, '/posts');
      // final response = await http.get(uri);
      // final json = jsonDecode(response.body) as List;
      // final rcvLists = json.map((postJson) => ReceivingList.fromJson(postJson)).toList();
      // return rcvLists;

      SharedPreferences loginInfoSession = await SharedPreferences.getInstance();
      String? extractJsessionId = loginInfoSession.getString('jsessionid');
      String? ctkey = loginInfoSession.getString('ctkey');

      MESServerConnection mesConn = MESServerConnection();
      String address = "http://192.168.0.188:8081/iUp_MES/rcvwork8011PManagement/getRcvwork8011P_10Q;jsessionid=${extractJsessionId}";
      final response = await mesConn.connectAPI(HttpMethod.POST, address, {
        "paramMap":{},
        "dataSetMap":{
          "ds_cond":[{
            "PD_MODE":"R",
            "PD_VALUE1":"$ctkey||$fromDate||$toDate||||||||",
            "PD_VALUE2":"||}"
          }]
        }
      });

      List<dynamic> json = jsonDecode(response.body)["dataset"]["ds_master_10Q"];

      //print('json is: $json');
      final rcvLists = json.map((rcvJson) => ReceivingList.fromJson(rcvJson)).toList();
      //print('runtimeType is: ${rcvLists.runtimeType}');

      if (response.statusCode == 200) {
        return rcvLists;
      } else {
        return <ReceivingList>[];
      }

    } catch (e) {
      rethrow;
    }
  }

  Future<List<ReceivingList>> eighty10_40W(jsessionid, String mngDateStr, String vldDateStr, String lot, String inspectedQty) async {
    try {
      // final uri = Uri.https( _baseUrl, '/posts');
      // final response = await http.get(uri);
      // final json = jsonDecode(response.body) as List;
      // final rcvLists = json.map((postJson) => ReceivingList.fromJson(postJson)).toList();
      // return rcvLists;

      SharedPreferences loginInfoSession = await SharedPreferences.getInstance();
      String? extractJsessionId = loginInfoSession.getString('jsessionid');
      String? ctkey = loginInfoSession.getString('ctkey');

      print('jsessionid: $jsessionid\nmngDateStr: $mngDateStr\nexpiryDateStr: $vldDateStr\nLot: $lot\ninspected qty: $inspectedQty');

      MESServerConnection mesConn = MESServerConnection();
      String address = "http://192.168.0.188:8081/iUp_MES/rcvwork8010FManagement/saveRcvwork8010F_40W;jsessionid=${extractJsessionId}";
      final response = await mesConn.connectAPI(HttpMethod.POST, address, {
        "paramMap":{},
        "dataSetMap":{
          "ds_master_40W":[{
            "MNG_DT": mngDateStr,
            "VLD_DT": vldDateStr,
            "LOT_NO": lot,
            "RCV_QTY": inspectedQty,
            "COMP_CD": ctkey,
            "RCV_DT":"20210908",
            "RCV_SEQ":1,
            "DTL_SEQ":1,
            "LOT_SEQ":"",
            "ITEM_CD":"11000002",
            "PD_MODE":"C",
            "ROWTYPE":1
          }]
        }
      });

      List<dynamic> json = jsonDecode(response.body)["dataset"]["ds_master_40W"];

      print('json is: $json');
      final rcvLists = json.map((rcvJson) => ReceivingList.fromJson(rcvJson)).toList();
      //print('runtimeType is: ${rcvLists.runtimeType}');


      if (response.statusCode == 200) {
        return rcvLists;
      } else {
        return <ReceivingList>[];
      }

      //return 'test';

    } catch (e) {
      rethrow;
    }
  }

  Future<List<ReceivingList>> getRcvWork8011P(startDate, endDate) async {
    try {
      // final uri = Uri.https( _baseUrl, '/posts');
      // final response = await http.get(uri);
      // final json = jsonDecode(response.body) as List;
      // final rcvLists = json.map((postJson) => ReceivingList.fromJson(postJson)).toList();
      // return rcvLists;

      SharedPreferences loginInfoSession = await SharedPreferences.getInstance();
      String? extractJsessionId = loginInfoSession.getString('jsessionid');
      String? ctkey = loginInfoSession.getString('ctkey');

      print('ctkey: $ctkey\nstartDate: $startDate\nendDate: $endDate');

      MESServerConnection mesConn = MESServerConnection();
      String address = "http://192.168.0.188:8081/iUp_MES/rcvwork8011PManagement/getRcvwork8011P_10Q;jsessionid=${extractJsessionId}";
      final response = await mesConn.connectAPI(HttpMethod.POST, address, {
        "paramMap":{},
        "dataSetMap":{
          "ds_cond":[{
            "PD_MODE":"R",
            "PD_VALUE1":"$ctkey||$startDate||$endDate||||||||",
            "PD_VALUE2":"||}"
          }]
        }
      });

      List<dynamic> json = jsonDecode(response.body)["dataset"]["ds_master_10Q"];

      print('json is: $json');
      final rcvLists = json.map((rcvJson) => ReceivingList.fromJson(rcvJson)).toList();
      //print('runtimeType is: ${rcvLists.runtimeType}');

      if (response.statusCode == 200) {
        return rcvLists;
      } else {
        return <ReceivingList>[];
      }

    } catch (e) {
      rethrow;
    }
  }

  final _baseUrl = 'jsonplaceholder.typicode.com';

  Future<List<ReceivingList>> getRcvLists() async {
    try {
      final uri = Uri.https( _baseUrl, '/posts');
      final response = await http.get(uri);
      final json = jsonDecode(response.body) as List;
      final rcvLists = json.map((postJson) => ReceivingList.fromJson(postJson)).toList();
      return rcvLists;
    } catch (e) {
      throw e;
    }
  }

  Future<List<Post>> getPosts() async {
    try {
      final uri = Uri.https(_baseUrl, '/posts/?_limit=8');
      final response = await http.get(uri);
      final json = jsonDecode(response.body) as List;
      final posts = json.map((postJson) => Post.fromJson(postJson)).toList();
      return posts;
    } catch (e) {
      rethrow;
    }
  }

  final _usersBaseUrl = 'jsonplaceholder.typicode.com';

  Future<List<User>> getUsers() async {
    try {
      final uri = Uri.https(_usersBaseUrl, '/users');
      final response = await http.get(uri);
      final json = jsonDecode(response.body) as List;
      //print('json is: ${json.toString()}');
      final users = json.map((postJson) => User.fromJson(postJson)).toList();
      //print('users are: ${users.toString()}');

      return users;
    } catch (e) {
      throw e;
    }
  }
}
