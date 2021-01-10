import 'package:eupori_music/model/model.dart';
import 'package:eupori_music/widget/main_list.dart';
import 'package:eupori_music/widget/main_poster.dart';
import 'package:eupori_music/widget/slide_up_panel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Music> musics = [
    Music.fromMap({
      'title': 'City of Stars',
      'artist': 'Ryan Gosling, Emma Stone',
      'genre': 'POP/OST',
      'cover': 'lalaland_cover.jpg',
      'like': false,
    }),
    Music.fromMap({
      'title': 'Flower Dance',
      'artist': 'DJ Okwari',
      'genre': 'New Age Music',
      'cover': 'flowerdance.png',
      'like': false,
    }),
    Music.fromMap({
      'title': 'River Flows In You',
      'artist': '이루마',
      'genre': 'New Age Music',
      'cover': 'riverflowsinyou.jpg',
      'like': false,
    }),
    Music.fromMap({
      'title': '인생의 회전목마',
      'artist': 'Hisaishi Joe',
      'genre': 'New Age Music/OST',
      'cover': 'howls_moving_castle.jpg',
      'like': false,
    }),
    Music.fromMap({
      'title': 'POP/STARS',
      'artist': 'K/DA',
      'genre': 'POP',
      'cover': 'popstars.jpg',
      'like': false,
    }),
    Music.fromMap({
      'title': 'Holyday',
      'artist': 'Green Day',
      'genre': 'POP/OST',
      'cover': 'holyday.jpg',
      'like': false,
    }),
    Music.fromMap({
      'title': '몽환의 숲',
      'artist': '키네틱 플로우, feat.이루마',
      'genre': '랩/힙합',
      'cover': '몽환의숲.jpg',
      'like': false,
    }),
    Music.fromMap({
      'title': '미리메리크리스마스',
      'artist': '아이유',
      'genre': 'Easy Listening',
      'cover': '미리메리크리스마스.jpg',
      'like': false,
    }),
    Music.fromMap({
      'title': '밤하늘의 별을',
      'artist': '경서',
      'genre': '발라드',
      'cover': '밤하늘의별을.jpeg',
      'like': false,
    }),
    Music.fromMap({
      'title': 'Dynamite',
      'artist': 'BTS',
      'genre': '댄스',
      'cover': 'dynamite.jpg',
      'like': false,
    }),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              MainPoster(musics: musics),
              MainList(musics: musics),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: SlideUpPanel(),
            ),
          ),
        ],
      ),
    );
  }
}
