import 'package:flutter/material.dart';
import 'package:spotify_clone_app/songplaylistscreen.dart';

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

