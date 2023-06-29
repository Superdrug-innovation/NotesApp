import 'package:flutter/material.dart';
import 'package:notes_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

var sdColour =
<int, Color>{
  50:const Color.fromRGBO(238,0,136, .1),
  100:const Color.fromRGBO(238,0,136, .2),
  200:const Color.fromRGBO(238,0,136, .3),
  300:const Color.fromRGBO(238,0,136, .4),
  400:const Color.fromRGBO(238,0,136, .5),
  500:const Color.fromRGBO(238,0,136, .6),
  600:const Color.fromRGBO(238,0,136, .7),
  700:const Color.fromRGBO(238,0,136, .8),
  800:const Color.fromRGBO(238,0,136, .9),
  900:const Color.fromRGBO(238,0,136, 1),
};

MaterialColor superdrugColour = MaterialColor(0xffee0088, sdColour);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: superdrugColour),
    );
  }
}


