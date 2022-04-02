import 'package:flutter/material.dart';
import 'package:Upshine/custom_widgets/player_card.dart';
import '../custom_widgets/topbar_center_text.dart';

class playerui extends StatefulWidget {
  const playerui({Key? key}) : super(key: key);

  @override
  _playeruiState createState() => _playeruiState();
}

class _playeruiState extends State<playerui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255), body: player());
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
            topbar_center_text("Player"),
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

class player extends StatefulWidget {
  const player({Key? key}) : super(key: key);

  @override
  _playerState createState() => _playerState();
}

class _playerState extends State<player> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
              child: topbar(),
            ),
            player_card(
                "https://i1.sndcdn.com/artworks-000173935001-g1x896-t500x500.jpg",
                "Closer",
                "Chainmokers")
          ],
        ),
      ),
    );
  }
}
