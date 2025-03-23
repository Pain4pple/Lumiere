/*
 This is what a video object is

_________________________________________________

  it has these properties:
  > int id;
  > String site;
  > String type;

_________________________________________________

 */
class Video {
  final String id;
  final String site;
  final String key;
  final String type;

  Video({required this.key, required this.id, required this.site, required this.type});
}
