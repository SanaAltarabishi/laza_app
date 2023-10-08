import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sign_app/app/get_it.dart';
import 'package:sign_app/pages/splash_screen.dart';

GetIt getIt = GetIt.instance;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
