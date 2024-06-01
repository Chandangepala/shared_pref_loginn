import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_pref_loginn/screens/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () async{

      var prefs = await SharedPreferences.getInstance();
      var isLogin = prefs.getBool(LoginPage.LOGIN_KEY);
      Widget nextPage = LoginPage();
      if(isLogin != null && isLogin){
        nextPage = HomePage();
      }
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => nextPage));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo.png', width: 150, height: 150,),
      ),
    );
  }
}
