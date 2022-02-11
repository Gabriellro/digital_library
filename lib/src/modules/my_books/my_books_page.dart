import 'package:digital_library/src/modules/_export_modules.dart';
import 'package:digital_library/src/shared/data/dummy_data.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/_export_widgets.dart';

class MyBooksPage extends StatelessWidget {
  static String routeName = "/MyBooksPage";
  const MyBooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Row(
          children: [
            Text(
              'Meus livros',
              style: Theme.of(context).textTheme.headline6,
            ),
            IconButton(
              icon: const Icon(Icons.keyboard_arrow_down_rounded),
              onPressed: () {},
            ),
          ],
        ),
      ),
      actions: [
        Center(
          child: Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              border: Border.all(
                width: 2,
                color: Colors.black,
                style: BorderStyle.solid,
              ),
            ),
            child: Icon(
              Icons.search_rounded,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: IconButton(
            icon: const Icon(Icons.view_module_rounded),
            onPressed: () {},
          ),
        ),
      ],
    );
    final availableheight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appBar.preferredSize.height -
        56;
    return Scaffold(
      appBar: appBar,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: availableheight,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          SizedBox(
            height: availableheight,
            child: BookSearch(bookModels: dummybooks),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 0,
        icon: const Icon(
          Icons.add_rounded,
          color: Colors.white,
        ),
        label: Text(
          'adicionar',
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Colors.white),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(RegisterBook.routeName);
        },
      ),
    );
  }
}
