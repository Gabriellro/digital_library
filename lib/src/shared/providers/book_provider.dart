// ignore_for_file: avoid_print

import 'package:digital_library/src/shared/data/dummy_data.dart';
import 'package:flutter/material.dart';

// import 'package:digital_library/src/shared/data/dummy_data.dart';
import 'package:digital_library/src/shared/models/book_model.dart';

class BookProvider with ChangeNotifier {
  final List<BookModel> _items = dummybooks;

  List<BookModel> get items => [..._items];

  List<BookModel> get bookMarkeditems =>
      _items.where((book) => book.isBookMark).toList();

  void addBook(BookModel bookModel) {
    _items.add(bookModel);
    notifyListeners();
  }

  // Future<void> loadBooks() async {
  //   const _baseUrl = 'https://openlibrary.org';
  //   final response = await http.get(Uri.parse('$_baseUrl/works/OL27448W.json'));
  //   Map<String, dynamic> data = jsonDecode(response.body);
  //   data.forEach(
  //     (bookId, bookData) {
  //       _items.add(
  //         BookModel(
  //           description: bookData['description'],
  //           links: bookData['links'],
  //           title: bookData['title'],
  //           covers: bookData['covers'],
  //           subjectPlaces: bookData['subjectPlaces'],
  //           firstPublishDate: bookData['firstPublishDate'],
  //           subjectPeople: bookData['subjectPeople'],
  //           key: bookData['key'],
  //           authors: bookData['authors'],
  //           excerpts: bookData['excerpts'],
  //           subjects: bookData['subjects'],
  //           type: bookData['type'],
  //           subjectTimes: bookData['subjectTimes'],
  //           latestRevision: bookData['latestRevision'],
  //           revision: bookData['revision'],
  //           created: bookData['created'],
  //           lastModified: bookData['lastModified'],
  //         ),
  //       );
  //     },
  //   );
  //   notifyListeners();
  // }
}



  // bool _showBookmarkedOlny = false;

  // List<BookModel> get items {
  //   if (_showBookmarkedOlny) {
  //     return _items.where((book) => book.isBookMark).toList();
  //   }
  //   return [..._items];
  // }

  // void showBookmarkedOlny() {
  //   _showBookmarkedOlny = true;
  //   notifyListeners();
  // }

  // void showBookmarkedAll() {
  //   _showBookmarkedOlny = false;
  //   notifyListeners();
  // }