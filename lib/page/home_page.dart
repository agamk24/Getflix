import 'package:flutter/material.dart';
import 'package:getflix/page/profile_page.dart';

import 'detail_movie_page.dart';
import '../widget/movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Stack(
            children: <Widget>[
              Text(
                'GETFLIX',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 6
                    ..color = Colors.black45,
                ),
              ),
              Text(
                'GETFLIX',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      (context),
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                },
                icon: const Icon(Icons.person))
          ],
        ),
        drawer: const Drawer(),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (() {
                  Navigator.push(
                      (context),
                      MaterialPageRoute(
                          builder: (context) => const DetailMovie()));
                }),
                child: const MovieCard(),
              );
            }));
  }
}
