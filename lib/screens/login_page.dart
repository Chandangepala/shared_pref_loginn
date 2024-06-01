import 'package:flutter/material.dart';
import 'package:shared_pref_loginn/screens/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static String LOGIN_KEY = 'isLogin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () async{
          var sharedPref = await SharedPreferences.getInstance();
          sharedPref.setBool(LOGIN_KEY, true);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex) => HomePage()));
        }, child: Text('Login')),
      ),
    );
  }
}
