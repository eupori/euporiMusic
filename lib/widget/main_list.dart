import 'package:eupori_music/model/model.dart';
import 'package:flutter/material.dart';

class MainList extends StatelessWidget {
  final List<Music> musics;
  MainList({this.musics});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding : EdgeInsets.only(top:16),
        scrollDirection: Axis.vertical,
        children: makeMusicList(context, musics),
      ),
    );
  }
}

List<Widget> makeMusicList(BuildContext context, List<Music> musics) {
  List<Widget> results = [];
  for (var i = 0; i < musics.length; i++) {
    results.add(
      InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute<Null>(
              fullscreenDialog: true,
              builder: (BuildContext context) {
                return Container();
              }));
        },
        child: Container(
          padding: EdgeInsets.all(0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: FlatButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              "images/"+musics[i].cover,
                              // "images/lalaland_cover.jpg",
                              width: 50,
                              height: 50,
                            ),
                          ),
                          Column(children: [
                            Container(
                              width: 300,
                              padding: EdgeInsets.fromLTRB(8, 8, 0, 0),
                              child: Text(
                                musics[i].title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Container(
                              width: 300,
                              padding: EdgeInsets.fromLTRB(8, 8, 0, 0),
                              child: Text(
                                musics[i].artist,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white70),
                              ),
                            ),
                          ]),
                          Container(
                            
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                  Icons.more_vert,
                                  color: Colors.white70,
                                  size: 20,
                                ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  return results;
}
