import 'package:coffee_shop/screens/main_screen.dart';
import 'package:coffee_shop/views/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => WelcomePage(),
        "/main": (context) => MainScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.soraTextTheme(),
        primaryColor: Color(0xffC67C4E),
        colorScheme: ColorScheme.light(primary: Color(0xffC67C4E)),
      ),
    );
  }
}
