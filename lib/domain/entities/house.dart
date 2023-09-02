class HouseEntity {
  final String slug;
  final String name;
  final List<Map<String, dynamic>> members;

  HouseEntity({
    required this.slug,
    required this.members,
    required this.name,
  });
}
