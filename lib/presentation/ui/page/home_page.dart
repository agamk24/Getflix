import 'package:flutter/material.dart';
import 'package:getflix/data/provider/network/api_endpoint.dart';
import 'package:getflix/presentation/get/controller/home_controller.dart';
import 'package:get/get.dart';
import 'package:getflix/presentation/ui/routes/route_name.dart';
import 'package:getflix/presentation/ui/widget/movie_card.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                controller.setView(false);
              },
              icon: const Icon(Icons.grid_view_rounded)),
          IconButton(
              onPressed: () {
                controller.setView(true);
              },
              icon: const Icon(Icons.view_list_rounded)),
          IconButton(
              onPressed: () {
                Get.toNamed(RouteName.profilePage);
              },
              icon: const Icon(Icons.person)),
        ],
      ),
      body: Obx(
        () => controller.isConnected
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: controller.viewItem),
                itemCount: controller.listData.length,
                itemBuilder: (context, index) {
                  var data = controller.listData[index];
                  return GestureDetector(
                    onTap: (() {
                      Get.toNamed(RouteName.detailPage, arguments: data.id);
                    }),
                    child: MovieCard(
                      imageUrl: '$baseUrlImage${data.posterPath}',
                      title: data.voteAverage!.toString(),
                      rating: data.voteAverage.toString(),
                      fontSize: controller.sizeItem,
                    ),
                  );
                },
              )
            : Container(
                color: Colors.white,
              ),
      ),
    );
  }
}
