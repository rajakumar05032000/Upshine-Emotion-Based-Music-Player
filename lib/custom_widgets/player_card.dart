import 'package:flutter/material.dart';
import 'package:Upshine/custom_widgets/heading_text.dart';
import 'package:Upshine/custom_widgets/song_list_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class player_card extends StatefulWidget {
  final String image_url, song_name, Song_info;

  const player_card(this.image_url, this.song_name, this.Song_info);

  @override
  _player_cardState createState() => _player_cardState();
}

class _player_cardState extends State<player_card> {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    Color musicplayer_theme = Color(0xff264e8b);
    Color custom_grey = Color.fromARGB(255, 165, 162, 162);
    return Container(
      width: screen_width,
      height: screen_height - 50,
      child: Card(
        elevation: 15,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(65.0))),
        child: Column(children: [
          Icon(
            Icons.horizontal_rule_rounded,
            size: 50.0,
            color: Color.fromARGB(255, 165, 162, 162),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              headingtext("Listening to"),
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: screen_width / 100 * 85,
            height: screen_height / 100 * 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(55),
              child: SizedBox.fromSize(
                size: Size.fromRadius(180), // Image radius
                child: Image.network(widget.image_url, fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 14.0, 20.0, 0.0),
            child: Container(
                height: 60.h,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25.0, 8.0, 15.0, 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.song_name,
                            style: TextStyle(
                                fontFamily: 'Varela',
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18.sp),
                          ),
                          SizedBox(height: 10.h),
                          Text(widget.Song_info,
                              style: TextStyle(
                                  fontFamily: 'Varela',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.sp,
                                  color: Color.fromARGB(255, 165, 162, 162)))
                        ],
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border_outlined),
                        iconSize: 35.0,
                        color: Color.fromARGB(255, 165, 162, 162),
                        alignment: Alignment.centerRight,
                      ),
                    ),
                  ],
                )),
          ),
          Slider(
            value: 1.0,
            min: 1,
            max: 100,
            divisions: 100,
            onChanged: (double newValue) {},
            activeColor: musicplayer_theme,
            inactiveColor: Color.fromARGB(255, 192, 191, 191),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 5.0, 15.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("0.12",
                    style: TextStyle(
                        fontFamily: 'Varela',
                        fontWeight: FontWeight.w700,
                        fontSize: 13.sp,
                        color: Color.fromARGB(255, 165, 162, 162))),
                Text("3.25",
                    style: TextStyle(
                        fontFamily: 'Varela',
                        fontWeight: FontWeight.w700,
                        fontSize: 13.sp,
                        color: Color.fromARGB(255, 165, 162, 162)))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 5.0, 15.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shuffle),
                  iconSize: 30.0,
                  color: custom_grey,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_previous),
                    iconSize: 35.0,
                    color: custom_grey),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_circle),
                  iconSize: 60.0,
                  color: musicplayer_theme,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_next),
                    iconSize: 35.0,
                    color: custom_grey),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.queue_music),
                  iconSize: 30.0,
                  color: custom_grey,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
