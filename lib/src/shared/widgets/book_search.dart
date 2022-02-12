import 'package:flutter/material.dart';

import 'package:digital_library/src/modules/book_datails/book_datail_page.dart';
import 'package:digital_library/src/shared/models/book_model.dart';
import 'package:provider/provider.dart';

import '../providers/_export_providers.dart';

class BookSearch extends StatelessWidget {
  final List<BookModel> bookModels;
  final bool showBookMarked;

  const BookSearch(
      {Key? key, required this.bookModels, required this.showBookMarked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BookProvider>(context);
    final List<BookModel> loadedBooks =
        showBookMarked ? provider.bookMarkeditems : provider.items;
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: loadedBooks.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: loadedBooks[i],
        child: const BookSearchItem(),
      ),
    );
  }
}

class BookSearchItem extends StatelessWidget {
  const BookSearchItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bookModel = Provider.of<BookModel>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(
          BookDatatilsPage.routeName,
          arguments: bookModel,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      bookModel.covers,
                      fit: BoxFit.cover,
                      width: 94,
                      height: 130,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 150,
                          child: Text(
                            bookModel.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: 140,
                          child: Text(
                            bookModel.authors.first.author.key,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: 140,
                          child: Text(
                            bookModel.firstPublishDate,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
