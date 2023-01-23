import 'package:flutter/material.dart';
import 'package:sortify/main.dart';

class TopSongsScreen extends StatefulWidget {
  const TopSongsScreen({Key? key}) : super(key: key);

  @override
  State<TopSongsScreen> createState() => _TopSongsScreenState();
}

class _TopSongsScreenState extends State<TopSongsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Top Songs', style: TextStyle(color: kprimarygreen),),
        centerTitle: true,
      ),
    );
  }
}
