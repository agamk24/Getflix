// ignore_for_file: prefer_if_null_operators, prefer_null_aware_operators

import 'package:getflix/domain/entities/result.dart';

class ResultModel extends Result {
  ResultModel({
    adult,
    backdropPath,
    genreIds,
    id,
    originalTitle,
    overview,
    popularity,
    posterPath,
    releaseDate,
    title,
    video,
    voteAverage,
    voteCount,
  }) : super(
            adult: adult,
            backdropPath: backdropPath,
            genreIds: genreIds,
            id: id,
            originalTitle: originalTitle,
            overview: overview,
            popularity: popularity,
            posterPath: posterPath,
            releaseDate: releaseDate,
            title: title,
            video: video,
            voteAverage: voteAverage,
            voteCount: voteCount);

  ResultModel.fromJson(dynamic json) {
    adult = json["adult"] == null ? null : json["adult"];
    backdropPath = json["backdrop_path"] == null ? null : json["backdrop_path"];
    genreIds = json["genre_ids"] == null
        ? null
        : List<int>.from(json["genre_ids"].map((x) => x));
    id = json["id"] == null ? null : json["id"];
    originalTitle =
        json["original_title"] == null ? null : json["original_title"];
    overview = json["overview"] == null ? null : json["overview"];
    popularity =
        json["popularity"] == null ? null : json["popularity"].toDouble();
    posterPath = json["poster_path"] == null ? null : json["poster_path"];
    releaseDate = json["release_date"] == null
        ? null
        : DateTime.parse(json["release_date"]);
    title = json["title"] == null ? null : json["title"];
    video = json["video"] == null ? null : json["video"];
    voteAverage =
        json["vote_average"] == null ? null : json["vote_average"].toDouble();
    voteCount = json["vote_count"] == null ? null : json["vote_count"];
  }

  ResultModel.fromEntity(Result entity) {
    adult = entity.adult;
    backdropPath = entity.backdropPath;
    genreIds = entity.genreIds;
    id = entity.id;
    originalTitle = entity.originalTitle;
    overview = entity.overview;
    popularity = entity.popularity;
    posterPath = entity.posterPath;
    releaseDate = entity.releaseDate;
    title = entity.title;
    video = entity.video;
    voteAverage = entity.voteAverage;
    voteCount = entity.voteCount;
  }

  Map<String, dynamic> toJson() => {
        "adult": adult == null ? null : adult,
        "backdrop_path": backdropPath == null ? null : backdropPath,
        "genre_ids": genreIds == null
            ? null
            : List<dynamic>.from(genreIds!.map((x) => x)),
        "id": id == null ? null : id,
        "original_title": originalTitle == null ? null : originalTitle,
        "overview": overview == null ? null : overview,
        "popularity": popularity == null ? null : popularity,
        "poster_path": posterPath == null ? null : posterPath,
        "release_date": releaseDate == null
            ? null
            : "${releaseDate!.year.toString().padLeft(4, '0')}-${releaseDate!.month.toString().padLeft(2, '0')}-${releaseDate!.day.toString().padLeft(2, '0')}",
        "title": title == null ? null : title,
        "video": video == null ? null : video,
        "vote_average": voteAverage == null ? null : voteAverage,
        "vote_count": voteCount == null ? null : voteCount,
      };
}
