import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.imagePosterUrl, required this.movieTitle});

  final String imagePosterUrl;
  final String movieTitle;
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black26,
          boxShadow: [BoxShadow(color: Colors.black87, blurRadius: 8, spreadRadius: 1, offset: Offset(0, 4))],
        ),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(imagePosterUrl, width: double.infinity, height: 200, fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(movieTitle, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis)),
            ),
          ],
        ),
      ),
    );
  }
}
