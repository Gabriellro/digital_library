import 'package:digital_library/src/modules/book_datails/book_datail_page.dart';
import 'package:digital_library/src/shared/data/dummy_data.dart';
import 'package:flutter/material.dart';

import 'package:digital_library/src/shared/models/_export_models.dart';

import '_export_widgets.dart';

class AuthorList extends StatelessWidget {
  final List<AuthorModel> authorModels;

  const AuthorList({Key? key, required this.authorModels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 178,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: authorModels.length,
        itemBuilder: (BuildContext context, int index) {
          final AuthorModel authorModel = authorModels[index];
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(
                context,
                BookDatatilsPage.routeName,
                arguments: dummybooks[index],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingerPicWidget.large(pic: authorModel.imageUrl),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 100,
                    child: Text(
                      authorModel.name,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodyText1,
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
