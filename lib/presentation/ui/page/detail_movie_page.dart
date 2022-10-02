import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getflix/data/provider/network/api_endpoint.dart';
import 'package:getflix/domain/entities/detail.dart';
import 'package:getflix/presentation/ui/page/home_page.dart';

class DetailMovie extends StatelessWidget {
  const DetailMovie({super.key, this.detail});
  final Detail? detail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              child: Image(image: NetworkImage(baseUrlImage)),
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
                children: [
                  Text(
                    '${detail!.title}',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
