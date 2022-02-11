// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';

// import 'package:digital_library/src/shared/data/dummy_data.dart';
import 'package:digital_library/src/shared/models/book_model.dart';
import 'package:http/http.dart' as http;

class BookProvider with ChangeNotifier {
  final List<BookModel> _items = [];

  List<BookModel> get items => [..._items];

  void addBook(BookModel bookModel) {
    _items.add(bookModel);
    notifyListeners();
  }

  Future<void> loadBooks() async {
    const _baseUrl = 'https://openlibrary.org';
    final response = await http.get(Uri.parse('$_baseUrl/works/OL27448W.json'));
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data.entries);
    notifyListeners();
  }
}
