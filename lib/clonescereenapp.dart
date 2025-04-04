import 'package:flutter/material.dart';

class Clonescereenapp extends StatelessWidget {
  const Clonescereenapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Spotify CLone App",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SongPlayListScreen(),
    );
  }
}

class SongPlayListScreen extends StatelessWidget {
  const SongPlayListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF191414),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            "Spotify Playlist",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
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
                  SizedBox(height: 20.0, width: 12.0),
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
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.language,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "2 saves - 50h 8m",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
