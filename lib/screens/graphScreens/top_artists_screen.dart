import 'package:flutter/material.dart';
import 'package:sortify/main.dart';

class TopArtistsScreen extends StatefulWidget {
  const TopArtistsScreen({Key? key}) : super(key: key);

  @override
  State<TopArtistsScreen> createState() => _TopArtistsScreenState();
}

class _TopArtistsScreenState extends State<TopArtistsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Top Artists', style: TextStyle(color: kprimarygreen),),
        centerTitle: true,
      ),
    );
  }
}
