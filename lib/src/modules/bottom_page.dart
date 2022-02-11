import 'package:digital_library/src/modules/_export_modules.dart';
import 'package:flutter/material.dart';

class BottomPage extends StatefulWidget {
  static String routeName = "/";
  const BottomPage({Key? key}) : super(key: key);

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int _selectindex = 0;

  final List<Widget> _pages = [
    const ExplorePage(),
    const MyBooksPage(),
    const SearchPage(),
  ];

  _selectPage(int index) {
    setState(() {
      _selectindex = index;
      // ignore: avoid_print
      print(_selectindex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectindex],
      bottomNavigationBar: SizedBox(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => _selectPage(0),
              icon: Icon(
                Icons.explore_rounded,
                color: _selectindex == 0
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).primaryColor.withOpacity(0.3),
              ),
            ),
            IconButton(
              onPressed: () => _selectPage(1),
              icon: Icon(
                Icons.auto_stories_rounded,
                color: _selectindex == 1
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).primaryColor.withOpacity(0.3),
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => _selectPage(2),
              icon: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://i.scdn.co/image/ab6761610000e5eb09bf4814c6585e1f69dfeef7',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
