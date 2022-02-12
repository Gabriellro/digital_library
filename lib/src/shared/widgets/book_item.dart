import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../modules/_export_modules.dart';
import '../models/_export_models.dart';

class BookItem extends StatelessWidget {
  const BookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bookModel = Provider.of<BookModel>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(
          BookDatatilsPage.routeName,
          arguments: bookModel,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(height: 5),
            SizedBox(
              width: 94,
              child: Text(
                bookModel.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
