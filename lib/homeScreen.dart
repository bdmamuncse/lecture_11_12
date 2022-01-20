import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {

  var sharedUserName='Sazzad_Wallet_UserName';
  var sharedEmail='Sazzad_Wallet_Email';
  var sharedPhone='Sazzad_Wallet_Phone';
  var sharedUserIsExist='Sazzad_Wallet_UserNameIsAvailable';
  var sharedUserBalance='Sazzad_Wallet_UserNameIsBalance';

  var readDataFromSharedUserName='';
  var readDataFromSharedUserEmail='';
  var readDataFromSharedUserPhone='';
  var readDataFromSharedUserBalance='';

  @override
  void initState() {
    setDataToSharedPreference();
    readDataFromSharedPreference();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Login'),
      ),
      body: Container(
        height: 300,
        width: double.infinity,
        child: Column(
          children: [
            Text(readDataFromSharedUserName),
            Text(readDataFromSharedUserEmail),
            Text(readDataFromSharedUserPhone),
            Text(readDataFromSharedUserBalance),
          ],
        ),
      ),
    );
  }

  void setDataToSharedPreference() async {
    SharedPreferences peon = await SharedPreferences.getInstance();
    peon.setString(sharedUserName, 'bdmamuncse00337');
    peon.setString(sharedEmail, 'bdmamuncse@gmail.com');
    peon.setInt(sharedPhone, 01712045195);
    peon.setDouble(sharedUserBalance, 2.84);
    peon.setBool(sharedUserIsExist, true);
  }

  void readDataFromSharedPreference() async {
    SharedPreferences peon = await SharedPreferences.getInstance();
    var username = peon.getString(sharedUserName);
    var phone = peon.getInt(sharedPhone);
    var email = peon.getString(sharedEmail);
    var userExist = peon.getBool(sharedUserIsExist);
    var balance = peon.getDouble(sharedUserBalance) ;

    setState(() {
      readDataFromSharedUserName=username!;
      readDataFromSharedUserEmail=email!;
      readDataFromSharedUserPhone='$phone';
      readDataFromSharedUserBalance='$balance';
    });

  }


}



