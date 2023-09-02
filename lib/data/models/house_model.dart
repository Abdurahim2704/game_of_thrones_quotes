import 'package:game_of_thrones_quotes/domain/entities/house.dart';

class House extends HouseEntity {
  House({
    required super.slug,
    required super.members,
    required super.name,
  });

  factory House.fromJson(Map<String, dynamic> json) {
    final members2 = (json["members"] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>);
    return House(
        slug: json["slug"], members: members2.toList(), name: json["name"]);
  }
}
