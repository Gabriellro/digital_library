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

class _MyBooksPageState extends State<MyBooksPage>
    with SingleTickerProviderStateMixin {
  bool _showBookMarkedOnly = false;
  bool select = false;
  late TabController _tabController;

  int _selectedIndex = 0;
  static const List<Tab> _myTabs = <Tab>[
    Tab(text: 'Todos'),
    Tab(text: 'Emprestados'),
    Tab(text: 'Reservados'),
  ];

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          'Meus Livros',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            labelStyle: Theme.of(context).textTheme.bodyLarge,
            unselectedLabelColor:
                Theme.of(context).primaryColor.withOpacity(0.3),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3,
            indicatorColor: Colors.black,
            padding: const EdgeInsets.only(left: 16),
            isScrollable: true,
            physics: const BouncingScrollPhysics(),
            tabs: _myTabs,
          ),
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
    return DefaultTabController(
      initialIndex: _selectedIndex,
      length: _myTabs.length,
      child: Scaffold(
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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    height: availableheight,
                    child: BookSearch(
                      bookModels: dummybooks,
                      showBookMarked: _showBookMarkedOnly,
                    ),
                  ),
                  const HomePage(),
                  const HomePage(),
                ],
              ),
            ),
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
      ),
    );
  }
}
