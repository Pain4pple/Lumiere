/*
 This is what a video object is

_________________________________________________

  it has these properties:
  > int id;
  > int popularity;
  > String title;
  > String status;
  > String backdropPath;
  > String posterPath;
  > bool video;
  > DateTime releaseDate;
  > List<Genre> genres;

_________________________________________________

 */
class Video {
  final int id;
  final String name;

  Video({required this.id, required this.name});
}
