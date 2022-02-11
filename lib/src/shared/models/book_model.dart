import 'package:digital_library/src/shared/models/_export_models.dart';

class BookModel {
  final String name;
  final String imageUrl;
  final String sinopse;
  final AuthorModel authorModel;
  final int year;
  bool isBookMarked = false;
  final InfoModel infoModel;

  BookModel({
    required this.name,
    required this.imageUrl,
    required this.authorModel,
    required this.year,
    required this.sinopse,
    required this.isBookMarked,
    required this.infoModel,
  });
}
