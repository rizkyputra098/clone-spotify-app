import 'package:flutter/material.dart';
import 'package:spotify_clone_app/data.dart';

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
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 8.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Header UI
              Center(
                child: Image.asset(
                  "assets/images/playlist_cover.jpg",
                  width: 350,
                  height: 350,
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: Text(
                  "My Playlist",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              const Text(
                "ini isinya lagu-lagu melow bukan karena galau, tapi karena emang suka lagu melow dan selow",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
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
              SizedBox(height: 10),
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
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Container(
                    width: 35,
                    height: 50,
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/cover.jpg",
                          ),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Icon(
                    Icons.arrow_circle_down,
                    color: Colors.grey,
                    size: 32,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Icon(
                    Icons.person_add,
                    color: Colors.grey,
                    size: 32,
                  ),
                  SizedBox(width: 24.0),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                    size: 32,
                  ),
                  Spacer(),
                  Icon(
                    Icons.shuffle,
                    color: Colors.grey,
                    size: 32,
                  ),
                  SizedBox(width: 12),
                  Icon(
                    Icons.play_circle,
                    color: Color(0xff1db954),
                    size: 52,
                  ),
                ],
              ),
              SizedBox(height: 16.0),

              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      child: Row(
                        children: [
                          Image.asset(
                            songDataList[index].cover,
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                songDataList[index].deskription,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                songDataList[index].tittle,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 12.0,
                    );
                  },
                  itemCount: songDataList.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
