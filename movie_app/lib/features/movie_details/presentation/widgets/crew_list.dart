import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/constants.dart';
import 'package:movie_app/features/movie_details/domain/models/movie_credits.dart';

class CrewTile extends StatelessWidget {
  const CrewTile({super.key, required this.cast});
  final Crew cast;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: cast.profilePath != '' ? NetworkImage("$tmdbProfileBaseURL${cast.profilePath}") : null,
            child: cast.profilePath.isEmpty ? const Icon(Icons.person, size: 30) : null,
          ),
          Text(cast.name, style: TextStyle(fontWeight: FontWeight.w700)),
          Text(cast.job, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
        ],
      ),
    );
  }
}
