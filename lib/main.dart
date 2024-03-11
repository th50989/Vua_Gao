import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:internship_vuagao/firebase_options.dart';
import 'package:internship_vuagao/pages/home_page/home_page.dart';
import 'package:internship_vuagao/pages/landing_page/landing_page.dart';
import 'package:internship_vuagao/pages/login_page/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
        '/landing': (context) => const MyLandingPage(),
        '/login': (context) => const MyLoginPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
