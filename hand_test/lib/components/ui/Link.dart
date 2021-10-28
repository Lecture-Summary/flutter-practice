// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Link extends StatelessWidget {
  const Link({Key? key, required this.label, required this.to})
      : super(key: key);

  final String label;
  final String to;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, to);
      },
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          label,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
