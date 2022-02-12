// ignore_for_file: unused_field

import 'package:flutter/material.dart';

import '../../shared/data/dummy_data.dart';
import '../../shared/widgets/_export_widgets.dart';
import '../_export_modules.dart';

enum FilterOptions { all, bookMarked }

class MyBooksPage extends StatefulWidget {
  static String routeName = "/MyBooksPage";
  const MyBooksPage({Key? key}) : super(key: key);

  @override
  State<MyBooksPage> createState() => _MyBooksPageState();
}

class _MyBooksPageState extends State<MyBooksPage> {
  bool _showBookMarkedOnly = false;
  bool select = false;
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
        IconButton(
          icon: const Icon(Icons.collections_bookmark_rounded),
          onPressed: () => setState(() {
            select = !select;
            if (select == true) {
              _showBookMarkedOnly = true;
            } else {
              _showBookMarkedOnly = false;
            }
          }),
        ),
        IconButton(
          icon: const Icon(Icons.view_module_rounded),
          onPressed: () {},
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
            child: BookSearch(
              bookModels: dummybooks,
              showBookMarked: _showBookMarkedOnly,
            ),
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
