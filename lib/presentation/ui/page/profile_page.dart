import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me',
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image(
                  image: NetworkImage(
                      'https://scontent-sin6-4.xx.fbcdn.net/v/t39.30808-6/296281404_5341983799214767_3302191675270143950_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=1EHbkduyv_EAX-hBjX5&_nc_ht=scontent-sin6-4.xx&oh=00_AT9TAqzFPfidTIuUp6Rp79lOw8IlYbvbjHA7xDC2oIT0Xg&oe=63384358')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              width: MediaQuery.of(context).size.width,
              // color: Colors.black26,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Muhammad Agam Kurniawan',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                      'I am an enthusiastic, self-motivated, reliable, responsible and hard working person. I am a mature team worker and adaptable to all challenging situations. I am able to work well both in a team environment as well as using own initiative.'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hobby',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                      'I love Playing video games, reading comics, watching anime and also i like playing some instrument like guitar and singing.')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
