import 'package:getflix/domain/entities/release_date.dart';

class ReleaseDateModel extends ReleaseDate {
  ReleaseDateModel({
    maximum,
    minimum,
  }) : super(
          maximum: maximum,
          minimum: minimum,
        );

  ReleaseDateModel.fromJson(dynamic json) {
    maximum = json["maximum"] == null ? null : DateTime.parse(json["maximum"]);
    minimum = json["minimum"] == null ? null : DateTime.parse(json["minimum"]);
  }

  ReleaseDateModel.fromEntity(ReleaseDate entity) {
    maximum = entity.maximum;
    minimum = entity.minimum;
  }
  Map<String, dynamic> toJson() => {
        "maximum": maximum == null
            ? null
            : "${maximum!.year.toString().padLeft(4, '0')}-${maximum!.month.toString().padLeft(2, '0')}-${maximum!.day.toString().padLeft(2, '0')}",
        "minimum": minimum == null
            ? null
            : "${minimum!.year.toString().padLeft(4, '0')}-${minimum!.month.toString().padLeft(2, '0')}-${minimum!.day.toString().padLeft(2, '0')}",
      };
}
