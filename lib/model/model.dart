class Music {
  final String title;
  final String artist;
  final String genre;
  final String cover;
  final bool like;

  Music.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        artist = map['artist'],
        genre = map['genre'],
        cover = map['cover'],
        like = map['like'];

  @override
  String toString() => "Music<$title:$artist>";
}