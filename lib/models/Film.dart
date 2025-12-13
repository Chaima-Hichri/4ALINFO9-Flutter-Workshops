import 'package:hive/hive.dart';
part 'Film.g.dart';

@HiveType(typeId: 1)
class Film {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String image;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final int price;

  const Film(this.title,this.image,this.description,this.price);
}