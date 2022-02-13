import 'package:flutter/material.dart';

import 'package:digital_library/src/shared/data/dummy_data.dart';
import 'package:digital_library/src/shared/widgets/_export_widgets.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/HomePage";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: SectionWidget(title: 'Os livros mais procurados'),
          ),
          const BookList(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: SectionWidget(title: 'Os autores mais procurados'),
          ),
          AuthorList(authorModels: authorModels),
        ],
      ),
    );
  }
}
