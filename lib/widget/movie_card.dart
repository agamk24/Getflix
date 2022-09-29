import 'package:flutter/material.dart';
import 'package:getflix/list_movie.dart';
import 'package:getflix/movie_endpoint.dart';

class MovieCard extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? rating;
  const MovieCard({super.key, this.imageUrl, this.title, this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 250,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.6),
                offset: const Offset(0.0, 10.0),
                blurRadius: 10,
                spreadRadius: -6)
          ],
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.35), BlendMode.multiply),
              image: NetworkImage(imageUrl!),
              fit: BoxFit.cover)),
      child: Stack(children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15)),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Icon(
                        Icons.play_arrow,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(title!)
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star_border_rounded,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(rating!)
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
