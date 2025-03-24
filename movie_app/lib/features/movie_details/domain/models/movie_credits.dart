class MovieCredits {
  final int id;
  final List<Cast> cast;
  final List<Crew> crew;

  MovieCredits({required this.id, required this.cast, required this.crew});
}

class Cast {
  final int id;
  final String name;
  final String character;
  final String profilePath;
  final int order;

  Cast({required this.id, required this.name, required this.character, required this.profilePath, required this.order});
}

class Crew {
  final int id;
  final String name;
  final String job;
  final String department;
  final String profilePath;

  Crew({required this.id, required this.name, required this.job, required this.department, required this.profilePath});
}
