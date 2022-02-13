import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../models/_export_models.dart';
import '../providers/_export_providers.dart';
import '_export_widgets.dart';

class BookList extends StatelessWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BookProvider>(context).items;
    final List<BookModel> loadedBooks = provider;
    return SizedBox(
      height: 187,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: loadedBooks.length,
        itemBuilder: (cxt, i) {
          return ChangeNotifierProvider.value(
            value: loadedBooks[i],
            child: const BookItem(),
          );
        },
      ),
    );
  }
}
