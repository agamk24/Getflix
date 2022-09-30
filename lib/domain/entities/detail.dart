import 'package:getflix/domain/entities/genre.dart';

class Detail {
  Detail({
    this.backdropPath,
    this.genres,
    this.originalTitle,
    this.overview,
    this.releaseDate,
    this.title,
    this.voteAverage,
  });

  String? backdropPath;
  List<Genre>? genres;
  String? originalTitle;
  String? overview;
  DateTime? releaseDate;
  String? title;
  double? voteAverage;
}
