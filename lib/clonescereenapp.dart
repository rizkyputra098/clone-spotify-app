import 'package:flutter/material.dart';

class Clonescereenapp extends StatelessWidget {
  const Clonescereenapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Spotify CLone App",
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: SongPlayListScreen(),
    );
  }
}

class SongPlayListScreen extends StatelessWidget {
  const SongPlayListScreen({super.key});

  @override
  Widget build(Object context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            "Spotify Playlist",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 4.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Header UI
              Center(
                child: Image.asset(
                  "assets/images/playlist_cover.jpg",
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Center(
                child: Text(
                  "My Playlist",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                "ini isinya lagu-lagu melow bukan karena galau, tapi karena emang suka lagu melow dan selow",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    "Rizky Putra",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
