// ignore_for_file: prefer_if_null_operators

import 'dart:convert';
import 'package:getflix/data/models/release_date_model.dart';
import 'package:getflix/data/models/result_model.dart';
import 'package:getflix/domain/entities/movie.dart';

MovieModel movieModelFromJson(String str) =>
    MovieModel.fromJson(json.decode(str));

String movieModelToJson(MovieModel data) => json.encode(data.toJson());

class MovieModel extends Movie {
  MovieModel({
    dates,
    page,
    results,
    totalPages,
    totalResults,
  }) : super(
            dates: dates,
            page: page,
            results: results,
            totalPages: totalPages,
            totalResults: totalResults);

  MovieModel.fromJson(dynamic json) {
    dates =
        json["dates"] == null ? null : ReleaseDateModel.fromJson(json["dates"]);
    page = json["page"] == null ? null : json["page"];
    results = json["results"] == null
        ? null
        : List<ResultModel>.from(
            json["results"].map((x) => ResultModel.fromJson(x)));
    totalPages = json["total_pages"] == null ? null : json["total_pages"];
    totalResults = json["total_results"] == null ? null : json["total_results"];
  }

  Map<String, dynamic> toJson() => {
        "dates":
            dates == null ? null : ReleaseDateModel.fromEntity(dates!).toJson(),
        "page": page == null ? null : page,
        "results": results == null
            ? null
            : List<ResultModel>.from(
                results!.map((x) => ResultModel.fromEntity(x).toJson())),
        "total_pages": totalPages == null ? null : totalPages,
        "total_results": totalResults == null ? null : totalResults,
      };
}
