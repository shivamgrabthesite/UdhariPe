import 'package:flutter/material.dart';
import 'package:flutter_postpe_demo/Screens/registration/adharcard_screen.dart';
import 'package:flutter_postpe_demo/Screens/registration/dob_screen.dart';
import 'package:flutter_postpe_demo/Screens/registration/grant_screen.dart';
import 'package:flutter_postpe_demo/Screens/home_screen.dart';
import 'package:flutter_postpe_demo/Screens/registration/name_screen.dart';
import 'package:flutter_postpe_demo/Screens/registration/otp_screen.dart';
import 'package:flutter_postpe_demo/Screens/registration/pancard_screen.dart';
import 'package:flutter_postpe_demo/Screens/pay_screen.dart';
import 'package:flutter_postpe_demo/Screens/send_money.dart';
import 'package:flutter_postpe_demo/Screens/registration/verify_email.dart';
import 'package:flutter_postpe_demo/Screens/registration/verify_mobile_number.dart';
import 'package:flutter_postpe_demo/Widgets/bottom_bar.dart';
import 'package:flutter_postpe_demo/Screens/notification_screen.dart';
import 'Screens/account_screen.dart';
import 'Screens/emi_statement_screen.dart';
import 'Screens/login/login_mobile.dart';
import 'Screens/mycart_screen.dart';
import 'Screens/profile_screen.dart';
import 'Screens/qrcode_screen.dart';
import 'Screens/scanner_screen.dart';
import 'Screens/transaction_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GrantScreen(),
    );
  }
}
