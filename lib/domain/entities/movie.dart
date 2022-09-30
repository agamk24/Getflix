import 'package:getflix/domain/entities/release_date.dart';
import 'package:getflix/domain/entities/result.dart';

class Movie {
  Movie({
    this.dates,
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  ReleaseDate? dates;
  int? page;
  List<Result>? results;
  int? totalPages;
  int? totalResults;
}
