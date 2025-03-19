import 'package:flutter/material.dart';

class MovieRowList extends StatelessWidget {
  const MovieRowList({super.key, required this.movieCategory});

  final String movieCategory;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(children: [Text(movieCategory), const Spacer(), TextButton(onPressed: () {}, child: Text("See All"))]),
        Row(
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                return null;
              },
            ),
          ],
        ),
      ],
    );
  }
}
