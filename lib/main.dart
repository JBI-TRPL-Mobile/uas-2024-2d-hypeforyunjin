import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/screens/login.dart';
import 'package:template_project/screens/signin.dart';
import 'package:template_project/screens/signup.dart';
import 'package:template_project/home/message.dart';
import 'package:template_project/home/dashboard.dart';
import 'package:template_project/provider/messagesprov.dart';
import 'package:template_project/home/profile.dart';
import 'package:template_project/provider/userprov.dart';

void main() {
runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MessageProviders()),
        ChangeNotifierProvider(create: (context) => UserProviders()),
      ],
      child: MyApp(),
      ),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Loginscreen(),
      title: 'Flutter Navigation Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/signin': (context) => const SigninScreen(),
        '/signup': (context) => const SignupScreen(), 
        '/message': (context) => const MessagesScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/profile' : (context) => ProfileScreen(),
      },
    );
  }
}