import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        // primaryColor: kPrimaryColor,
        // primarycolorだと色が変わらない -> colorShemeのprimaryで変更できた
        // [参考文献](https://stackoverflow.com/questions/69169306/flutter-themedata-primary-color-not-changing-from-theme-when-trying-to-add-a-pri)
        colorScheme: const ColorScheme.light(
          primary: kPrimaryColor,
        ),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
