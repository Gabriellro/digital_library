import 'package:flutter/material.dart';

import 'package:digital_library/src/shared/providers/_export_providers.dart';
import 'package:digital_library/src/modules/book_datails/book_datail_page.dart';
import 'package:digital_library/src/shared/models/book_model.dart';
import 'package:provider/provider.dart';

class BookList extends StatelessWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BookProvider>(context);
    final List<BookModel> loadedBooks = provider.items;
    return SizedBox(
      height: 178,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: loadedBooks.length,
        itemBuilder: (BuildContext context, int index) {
          final BookModel bookModel = loadedBooks[index];
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(
                context,
                BookDatatilsPage.routeName,
                arguments: loadedBooks[index],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      bookModel.imageUrl,
                      fit: BoxFit.cover,
                      width: 94,
                      height: 130,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 94,
                    child: Text(
                      bookModel.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
