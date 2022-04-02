import 'package:flutter/material.dart';
import 'package:Upshine/custom_widgets/song_list_view.dart';
import '../custom_widgets/heading_text.dart';
import '../custom_widgets/topbar_center_text.dart';
import '../custom_widgets/search_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../custom_widgets/music_card.dart';

class topbar extends StatelessWidget {
  const topbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu_open),
              iconSize: 32.0,
              color: Color.fromARGB(255, 136, 128, 128),
            ),
            topbar_center_text("Discover"),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.list),
              iconSize: 32.0,
              color: Color.fromARGB(255, 136, 128, 128),
            ),
          ],
        ));
  }
}

class below_search_row extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0.0, 30.0, 15.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Music Trending",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Varela",
                  fontSize: 17.sp)),
          Text("Show More",
              style: TextStyle(
                  color: Color.fromARGB(255, 165, 162, 162),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Varela",
                  fontSize: 17.sp))
        ],
      ),
    );
  }
}

class below_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5.0, 30.0, 15.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Recently",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Varela",
                  fontSize: 17.sp)),
          Text("Popular",
              style: TextStyle(
                  color: Color.fromARGB(255, 165, 162, 162),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Varela",
                  fontSize: 17.sp)),
          Text("Similar",
              style: TextStyle(
                  color: Color.fromARGB(255, 165, 162, 162),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Varela",
                  fontSize: 17.sp))
        ],
      ),
    );
  }
}

class h1 extends StatefulWidget {
  const h1({Key? key}) : super(key: key);

  @override
  _h1State createState() => _h1State();
}

class _h1State extends State<h1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
          child: Column(
            children: [
              topbar(),
              headingtext("Welcome !"),
              search_bar(),
              below_search_row(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 0.0),
                child: Row(
                  children: [
                    music_card(
                        "https://azsongslyrics.com/wp-content/uploads/2020/04/Shape-of-You-song-lyrics.jpeg",
                        "Shape of You",
                        "Justin-bieber"),
                    SizedBox(width: 10),
                    music_card(
                        "https://i1.sndcdn.com/artworks-000173935001-g1x896-t500x500.jpg",
                        "Closer",
                        "Chainmokers")
                  ],
                ),
              ),
              below_image(),
              song_list_view(
                  "https://media.istockphoto.com/photos/man-hiker-on-top-of-a-mountain-peak-picture-id1301431065?b=1&k=20&m=1301431065&s=170667a&w=0&h=Zyp_a5-NeApgUbbAwZEV109diqNDD8eTwgK2VDlXjmY=",
                  "Fealess",
                  "Lost Sky"),
              song_list_view(
                  "https://i.scdn.co/image/ab67616d0000b2739e495fb707973f3390850eea",
                  "Heat waves",
                  "DreamLand"),
              song_list_view(
                  "https://imgs.capitalfm.com/images/203864?crop=16_9&width=660&relax=1&signature=HiPC_-WbbXvhDAUpKePvWkFeWHw=",
                  "Levitating",
                  "Dua Lipa"),
              song_list_view(
                  "https://i1.sndcdn.com/artworks-AZxbsfTmF8l64GI1-fLn6Gg-t500x500.jpg",
                  "Way down We Go",
                  "Kaleo"),
              song_list_view(
                  "https://upstreamsquad.com/public/media/articles/eH6EvtIV1OHbI3S.jpeg",
                  "Panda",
                  "Desiigner"),
            ],
          ),
        ),
      ),
    );
  }
}
