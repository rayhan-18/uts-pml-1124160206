import 'package:flutter/material.dart';

void main(){
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Profile Muhamad Rayhan",
        theme: ThemeData(useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink,)),
        darkTheme: ThemeData(brightness: Brightness.dark),
        themeMode: ThemeMode.system,
        home: ProfilePage(),
    );
  }
}