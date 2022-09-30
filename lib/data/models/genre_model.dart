// ignore_for_file: prefer_if_null_operators

import 'package:getflix/domain/entities/genre.dart';

class GenreModel extends Genre {
  GenreModel({id, name}) : super(id: id, name: name);

  GenreModel.fromJson(Map<String, dynamic> json) {
    id = json["id"] == null ? null : json["id"];
    name = json["name"] == null ? null : json["name"];
  }

  GenreModel.fromEntity(Genre entity) {
    id = entity.id;
    name = entity.name;
  }

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
      };
}
