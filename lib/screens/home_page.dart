import 'package:flutter/material.dart';
import 'package:shared_pref_loginn/screens/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Welcome', style: TextStyle(fontSize: 32),),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: () async{
              var prefs = await SharedPreferences.getInstance();
              prefs.setBool(LoginPage.LOGIN_KEY, false);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
            }, child: Text('Logout'))
          ],
        ),
      ),
    );
  }
}
