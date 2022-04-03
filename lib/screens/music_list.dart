import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../custom_widgets/heading_text.dart';
import '../custom_widgets/topbar_center_text.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';

Color musicplayer_theme = Color(0xff264e8b);
Color custom_grey = Color.fromARGB(255, 165, 162, 162);

class song_list_view extends StatefulWidget {
  final String image_url, song_name, Song_info;

  const song_list_view(this.image_url, this.song_name, this.Song_info);

  @override
  _song_list_viewState createState() => _song_list_viewState();
}

class _song_list_viewState extends State<song_list_view> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 14.0, 10.0, 0.0),
      child: Container(
          height: 60.h,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(35), // Image radius
                  child: Image.network(widget.image_url, fit: BoxFit.cover),
                ),
              ),
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
                          fontSize: 15.sp),
                    ),
                    SizedBox(height: 10.h),
                    Text(widget.Song_info,
                        style: TextStyle(
                            fontFamily: 'Varela',
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                            color: Color.fromARGB(255, 165, 162, 162)))
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 13.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz),
                    iconSize: 35.0,
                    color: Color.fromARGB(255, 165, 162, 162),
                    alignment: Alignment.topRight,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class below_heading_text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5.0, 15.0, 15.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Songs",
              style: TextStyle(
                color: musicplayer_theme,
                fontWeight: FontWeight.w700,
                fontFamily: "Varela",
                fontSize: 17.sp,
              )),
          Text("Artists",
              style: TextStyle(
                  color: Color.fromARGB(255, 165, 162, 162),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Varela",
                  fontSize: 17.sp)),
          Text("Album",
              style: TextStyle(
                  color: Color.fromARGB(255, 165, 162, 162),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Varela",
                  fontSize: 17.sp)),
          Text("Playlist",
              style: TextStyle(
                  color: Color.fromARGB(255, 165, 162, 162),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Varela",
                  fontSize: 17.sp)),
        ],
      ),
    );
  }
}

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
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new),
              iconSize: 32.0,
              color: Color.fromARGB(255, 136, 128, 128),
            ),
            topbar_center_text("Musics"),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
              iconSize: 32.0,
              color: Color.fromARGB(255, 136, 128, 128),
            ),
          ],
        ));
  }
}

class music_list extends StatefulWidget {
  const music_list({Key? key}) : super(key: key);

  @override
  State<music_list> createState() => _music_listState();
}

class _music_listState extends State<music_list> {
  final FlutterAudioQuery audioQuery = FlutterAudioQuery();
  var songslist;

  Future<void> getsongs() async {
    songslist = await audioQuery.getSongs();
    print(songslist.length);
    setState(() {});
  }

  void initState() {
    getsongs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            topbar(),
            SizedBox(
              height: 3.0,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                child: Column(
                  children: [
                    headingtext("Music list"),
                    below_heading_text(),
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
              child: SizedBox(
                height: screen_height,
                child: ListView.builder(
                    itemCount: songslist.length,
                    itemBuilder: (context, index) {
                      var current_song = songslist[index];
                      var title1 = current_song.title;

                      if (title1.length >= 20) {
                        title1 = title1.substring(0, 20);
                      }

                      var artist1 = current_song.artist;
                      if (artist1.length >= 20) {
                        artist1 = artist1.substring(0, 20);
                      }
                      print(current_song.albumArtwork);
                      return song_list_view(
                          "https://i.pinimg.com/564x/a0/f7/a8/a0f7a83a15c118ccc30153be55512370.jpg",
                          title1,
                          artist1);
                    }),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
