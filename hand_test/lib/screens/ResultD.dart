// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ResultD extends StatelessWidget {
  const ResultD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('결과 D')),
      body: Column(
        children: const [
          Text('결과 텍스트'),
          Text('결과 텍스트'),
        ],
      ),
    );
  }
}
