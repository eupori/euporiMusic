import 'dart:ui';
import 'package:eupori_music/model/model.dart';
import 'package:flutter/material.dart';

class MainPoster extends StatefulWidget {
  final List<Music> musics;
  MainPoster({this.musics});
  @override
  _MainPosterState createState() => _MainPosterState(musics);
}

class _MainPosterState extends State<MainPoster> {
  bool _isShuffle = false;
  List<Music> musics;

  _MainPosterState(List<Music> musics){
    print(musics.length);
    this.musics = musics;
  }
  void initState() {
    super.initState();
    _isShuffle = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30),),
            image: DecorationImage(
              image: AssetImage('images/lalaland_cover.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            child: Column(
              children: [
                Container(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height/4,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      Container(
                        width: 200,
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'City of Stars',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: EdgeInsets.fromLTRB(20, 8, 0, 20),
                        child: Text(
                          musics.length.toString()+' Songs',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 16, color: Colors.white70),
                        ),
                      ),
                    ]),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 8, 20, 20),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _isShuffle = !_isShuffle;
                          });
                        },
                        child: CircleAvatar(
                          radius: 28,
                          backgroundColor:
                              _isShuffle ? Colors.white : Colors.black,
                          child: Icon(
                              Icons.shuffle,
                              color: _isShuffle ? Colors.black : Colors.white,
                              size: 30,
                            ),
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
    );
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: new Text('개발중인 기능'),
            content: new Text('현재 개발 진행중입니다.\n다음에 사용해주세요.'),
            actions: <Widget>[
              new FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: new Text('닫기'))
            ],
          );
        });
  }
}
