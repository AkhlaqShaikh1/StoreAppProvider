import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_application_provider/providers/store_controller.dart';
import 'package:store_application_provider/screens/change_name_screen.dart';
import 'package:store_application_provider/screens/home_page.dart';
import 'package:store_application_provider/screens/store_status_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => StoreController(),
      child: MaterialApp(
        title: 'Provider Store Application',
        initialRoute: '/home',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const MyHomePage(),
          ChangeScreen.id: (context) => const ChangeScreen(),
          StoreStatusPage.id: (context) => const StoreStatusPage(),
        },
      ),
    );
  }
}
