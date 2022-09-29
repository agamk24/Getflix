import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:getflix/controllers/listview_controller.dart';
import 'package:getflix/list_movie.dart';
import 'package:getflix/movie_endpoint.dart';
import 'package:getflix/page/profile_page.dart';
import 'package:get/get.dart' hide Response, FormData, MultipartFile;
import 'detail_movie_page.dart';
import '../widget/movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final v = Get.put(ListViewController());
  var movieList;

  callApi() async {
    Response response;
    response = (await Dio().get('$baseUrl$nowPlaying', queryParameters: {
      'api_key': apiKey,
      'language': defaultLanguage,
      'page': defaultPage
    }));
    print("response CallSimple: ${response.data}");
    movieList = Movie.fromJson(response.data);
    print('image url 2 ${movieList.results![0].posterPath}');
    // print('page ${movieList.results![0].id}');
    // print('image url ${movieList.results![0].posterPath}');
  }

  @override
  void initState() {
    super.initState();
    callApi();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, useMaterial3: true),
      home: Scaffold(
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
                    v.gridV();
                  },
                  icon: const Icon(Icons.grid_view_rounded)),
              IconButton(
                  onPressed: () {
                    v.listV();
                  },
                  icon: const Icon(Icons.view_list_rounded)),
              IconButton(
                  onPressed: () {
                    Get.to(ProfilePage());
                  },
                  icon: const Icon(Icons.person)),
            ],
          ),
          drawer: const Drawer(),
          body: Obx(() => GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: v.crossAxis.value),
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (() {
                    Get.to(DetailMovie());
                  }),
                  child: MovieCard(
                    imageUrl:
                        '$baseUrlImage${movieList.results![index].posterPath}',
                    title: '$baseUrlImage${movieList.results![index].title}',
                    rating:
                        '$baseUrlImage${movieList.results![index].voteAverage}',
                  ),
                );
              }))),
    );
  }
}
