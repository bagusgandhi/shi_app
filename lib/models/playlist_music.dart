
// buat class PLaylistMusic,dengan property title, color, dan subtitle

class PlaylistMusic {
  String title;
  String color;
  String subtitle;

  PlaylistMusic({
    required this.title,
    required this.color,
    required this.subtitle,
  });
}

// buat list dummy data dari class PLaylistMusic diatas

List<PlaylistMusic> playlist = [
  PlaylistMusic(
    title: "Playlist 1",
    color: "#FF0000",
    subtitle: "My favorite songs",
  ),
  PlaylistMusic(
    title: "Playlist 2",
    color: "#00FF00",
    subtitle: "Songs for working out",
  ),
  PlaylistMusic(
    title: "Playlist 3",
    color: "#0000FF",
    subtitle: "Relaxing songs",
  ),
    PlaylistMusic(
    title: "Playlist 4",
    color: "#0000FF",
    subtitle: "Study songs",
  ),
];
