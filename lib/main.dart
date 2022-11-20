import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uzair_developer/Features/Protofolio%20Screen/Protofolio.dart';

import 'Core/costum_scrollbehavior/Scroll_Behavior.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  ThemeData _dark = ThemeData.dark().copyWith(
    primaryColor: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Uzair Protofolio',
          scrollBehavior: MyCustomScrollBehavior(),
          darkTheme: _dark,
          theme: ThemeData(
            primarySwatch: Colors.purple,
            // canvasColor: Colors.purple.shade50,
            useMaterial3: true,
            fontFamily: "custom",
          ),
          home: const Protofolio(),
        );
      },
    );
  }
}
