import 'package:flutter/material.dart';
import 'package:Upshine/screens/player.dart';
import 'screens/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(fullappview());
}

class fullappview extends StatelessWidget {
  const fullappview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        home: homeui(),
        
        debugShowCheckedModeBanner: false,
        routes: {
          "/home": (context) => const homeui(),
          "/player": (context) => const playerui()
        },
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        theme: ThemeData(
          fontFamily: "Varela",
          textTheme: TextTheme(button: TextStyle(fontSize: 45.sp)),
        ),
      ),
    );
  }
}

class homeui extends StatelessWidget {
  const homeui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: h1(),
    );
  }
}
