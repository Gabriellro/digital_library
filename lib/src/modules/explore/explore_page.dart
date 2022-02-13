// ignore_for_file: avoid_print, unused_field

import 'package:digital_library/src/shared/models/_export_models.dart';
import 'package:flutter/material.dart';

import '../_export_modules.dart';

class ExplorePage extends StatefulWidget {
  static String routeName = "/ExplorePage";
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with SingleTickerProviderStateMixin {
  late final List<InfoModel> infoModels;
  late TabController _tabController;

  int _selectedIndex = 0;

  static const List<Tab> _myTabs = <Tab>[
    Tab(text: 'Tudo'),
    Tab(text: 'Livros'),
    Tab(text: 'Autores'),
    Tab(text: 'Genêros'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          'Digital Libary',
          style: Theme.of(context).textTheme.headline6,
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
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.search_rounded,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () => Navigator.pushNamed(
                context,
                SearchPage.routeName,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: IconButton(
            icon: const Icon(Icons.notifications_none_rounded),
            onPressed: () {},
          ),
        ),
      ],
    );
    final availableheight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appBar.preferredSize.height -
        56;

    return DefaultTabController(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TabBar(
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
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      HomePage(),
                      HomePage(),
                      HomePage(),
                      HomePage(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
