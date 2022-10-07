import 'package:flutter/material.dart';

import 'package:digital_library/src/shared/models/_export_models.dart';

import '_export_widgets.dart';

class AuthorList extends StatelessWidget {
  final List<AuthorModel> authorModels;

  const AuthorList({Key? key, required this.authorModels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: authorModels.length,
        itemBuilder: (BuildContext context, int index) {
          final AuthorModel authorModel = authorModels[index];
          return Padding(
            padding: const EdgeInsets.only(left: 16),
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
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        ?.copyWith(color: Colors.black),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
