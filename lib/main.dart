import 'package:bunkie/screens/home.dart';
import 'package:bunkie/screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  
  await Firebase.initializeApp();
  
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Widget getHomeScreen() {
    try {
      final _auth = FirebaseAuth.instance;
      final user = _auth.currentUser;
      if (user == null) {
        print('welcome screen');
        return WelcomeScreen();
      } else {
        return HomePage();
      }
    } catch (e) {
      print(e);
      return Container();
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bunkie',
      
     debugShowCheckedModeBanner: false,
      home: getHomeScreen(),
    );
  }
}

