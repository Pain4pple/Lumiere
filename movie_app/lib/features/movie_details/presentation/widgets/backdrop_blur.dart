import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropBlur extends StatelessWidget {
  const BackdropBlur({super.key, required this.backdropUrl});
  final String backdropUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        backdropUrl != '' ? Image.network(backdropUrl, fit: BoxFit.cover) : const SizedBox(),
        Positioned.fill(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), child: Container(color: Colors.black87))),
      ],
    );
  }
}
