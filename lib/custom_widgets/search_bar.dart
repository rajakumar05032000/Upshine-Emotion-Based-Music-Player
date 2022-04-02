import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class search_bar extends StatefulWidget {
  const search_bar({Key? key}) : super(key: key);

  @override
  _search_barState createState() => _search_barState();
}

class _search_barState extends State<search_bar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
      child: Card(
          child: Row(children: [
            Expanded(
              child: TextField(
                textAlign: TextAlign.justify,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontFamily: "Varela",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 165, 162, 162),
                  ),
                  hintText: 'Search music,album...',
                  contentPadding: EdgeInsets.fromLTRB(15.0, 5.0, 10.0, 5.0),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              iconSize: 28.0,
              color: Color.fromARGB(255, 165, 162, 162),
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 25.0, 0.0),
            ),
          ]),
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
      height: 75.h,
    );
  }
}
