import 'dart:math';

import 'package:flutter/material.dart';

import '../models/_export_models.dart';

class ReservationProvider with ChangeNotifier {
  Map<String, ReservationModel> _items = {};

  Map<String, ReservationModel> get items => {..._items};

  int get itemCount => _items.length;

  void addItem(BookModel bookModel) {
    if (_items.containsKey(bookModel.key)) {
      _items.update(
        bookModel.key,
        (existingItem) => ReservationModel(
          id: existingItem.id,
          bookKey: existingItem.bookKey,
          startDay: existingItem.startDay,
          endtDay: existingItem.endtDay,
        ),
      );
    } else {
      _items.putIfAbsent(
        bookModel.key,
        () => ReservationModel(
          id: Random().nextDouble().toString(),
          bookKey: bookModel.key,
          endtDay: DateTime.now(),
          startDay: DateTime.now(),
        ),
      );
    }
    notifyListeners();
  }

  void removeItem(String bookKey) {
    _items.remove(bookKey);
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
