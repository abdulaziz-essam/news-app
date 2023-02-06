import 'package:flutter/material.dart';
import "./sportData.dart";
class SportNews extends StatelessWidget {
  const SportNews({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body:  News(),
      ),
    );
  }
}


class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _MyAppState();
}

class _MyAppState extends State<News> {
  @override

  Widget build(BuildContext context) {
  SpNews spNews=new SpNews();
  List news=spNews.getData();
    return Column(
      children: [
        Image.asset("images/arg.png", width: 400, height: 400),

        Center(
          
          child: Text(news[0]),
        ),
      ],
    );
  }
}
