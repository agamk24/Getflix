// ignore_for_file: prefer_if_null_operators, prefer_null_aware_operators

import 'dart:convert';
import 'package:getflix/domain/entities/detail.dart';

DetailModel detailModelFromJson(String str) =>
    DetailModel.fromJson(json.decode(str));

String detailModelToJson(DetailModel data) => json.encode(data.toJson());

class DetailModel extends Detail {
  DetailModel.fromJson(Map<String, dynamic> json) {
    backdropPath = json["backdrop_path"] == null ? null : json["backdrop_path"];
    posterPath = json["poster_path"] == null ? null : json["poster_path"];
    originalTitle =
        json["original_title"] == null ? null : json["original_title"];
    overview = json["overview"] == null ? null : json["overview"];
    releaseDate = json["release_date"] == null
        ? null
        : DateTime.parse(json["release_date"]);
    title = json["title"] == null ? null : json["title"];
    voteAverage =
        json["vote_average"] == null ? null : json["vote_average"].toDouble();
    id = json["id"] == null ? null : json["id"].toString();
  }

  Map<String, dynamic> toJson() => {
        "backdrop_path": backdropPath == null ? null : backdropPath,
        "poster_path": posterPath == null ? null : posterPath,
        "original_title": originalTitle == null ? null : originalTitle,
        "overview": overview == null ? null : overview,
        "release_date": releaseDate == null
            ? null
            : "${releaseDate!.year.toString().padLeft(4, '0')}-${releaseDate!.month.toString().padLeft(2, '0')}-${releaseDate!.day.toString().padLeft(2, '0')}",
        "title": title == null ? null : title,
        "vote_average": voteAverage == null ? null : voteAverage,
        "id": id == null ? null : id,
      };
}
