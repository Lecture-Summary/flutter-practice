import 'package:flutter/material.dart';
import 'package:hand_test/components/ui/Link.dart';
import 'package:hand_test/screens/ResultA.dart';
import 'package:hand_test/screens/ResultB.dart';
import 'package:hand_test/screens/ResultC.dart';
import 'package:hand_test/screens/ResultD.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: '손바닥으로 하는 심리 테스트'),
        '/result/a': (context) => const ResultA(),
        '/result/b': (context) => const ResultB(),
        '/result/c': (context) => const ResultC(),
        '/result/d': (context) => const ResultD()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Link(
              label: '선택지 A',
              to: '/result/a',
            ),
            Link(
              label: '선택지 B',
              to: '/result/b',
            ),
            Link(
              label: '선택지 C',
              to: '/result/c',
            ),
            Link(
              label: '선택지 D',
              to: '/result/d',
            ),
          ],
        ),
      ),
    );
  }
}
