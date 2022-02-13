// ignore_for_file: unused_field

import 'package:flutter/material.dart';

import '../../shared/models/_export_models.dart';
import '../../shared/widgets/_export_widgets.dart';
import '../_export_modules.dart';

class BookDatatilsPage extends StatefulWidget {
  static String routeName = "/BookDatatilsPage";

  const BookDatatilsPage({Key? key}) : super(key: key);

  @override
  State<BookDatatilsPage> createState() => _BookDatatilsPageState();
}

class _BookDatatilsPageState extends State<BookDatatilsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _selectedIndex = 0;
  static const List<Tab> _myTabs = <Tab>[
    Tab(text: 'Resenhas'),
    Tab(text: 'Autor(a)'),
    Tab(text: 'Semelhantes'),
    Tab(text: 'Categoria'),
  ];

  @override
  void initState() {
    super.initState();

    // Provider.of<BookProvider>(
    //   context,
    //   listen: false,
    // ).loadBooks();

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
    final bookModel = ModalRoute.of(context)!.settings.arguments as BookModel;

    final appBar = AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        padding: EdgeInsets.zero,
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: Icon(
            bookModel.isBookMark == false
                ? Icons.bookmark_border_rounded
                : Icons.bookmark_rounded,
          ),
          tooltip: 'Favoritar',
          onPressed: () => setState(() => bookModel.tooggleBookMarked()),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            icon: const Icon(Icons.more_vert_rounded),
            onPressed: () {},
          ),
        ),
      ],
    );

    final availableheight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appBar.preferredSize.height;

    return DefaultTabController(
      initialIndex: _selectedIndex,
      length: _myTabs.length,
      child: Scaffold(
        appBar: appBar,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 64 + 30),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: availableheight + 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Theme.of(context).cardColor,
                  ),
                ),
                Positioned(
                  top: -40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                bookModel.covers,
                                fit: BoxFit.cover,
                                width: 90,
                                height: 134,
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
                                      style:
                                          Theme.of(context).textTheme.subtitle1,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  SizedBox(
                                    width: 140,
                                    child: Text(
                                      bookModel.authors[0].author.key,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  SizedBox(
                                    width: 140,
                                    child: Text(
                                      bookModel.firstPublishDate,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: const InfoWidget(
                          infoModel: InfoModel.book(
                            data: '2',
                            data1: '2',
                            data2: '2',
                          ),
                        ),
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 214,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 20),
                                      const SectionWidget(
                                          title: 'Sobre este livro'),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Text(
                                          bookModel.description.value,
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                TabBar(
                                  controller: _tabController,
                                  labelColor: Colors.black,
                                  labelStyle:
                                      Theme.of(context).textTheme.bodyLarge,
                                  unselectedLabelColor: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.3),
                                  indicatorSize: TabBarIndicatorSize.label,
                                  indicatorWeight: 3,
                                  indicatorColor: Colors.black,
                                  padding: const EdgeInsets.only(left: 16),
                                  isScrollable: true,
                                  physics: const BouncingScrollPhysics(),
                                  tabs: _myTabs,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: -24,
                            right: 36,
                            child: Row(
                              children: [
                                ActionChip(
                                  elevation: 0,
                                  backgroundColor: Colors.black,
                                  avatar: const Icon(
                                    Icons.edit_rounded,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    "Reservar",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(color: Colors.white),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  onPressed: () {
                                    final snackBar = SnackBar(
                                      content: const Text(
                                          'Livro reservado com sucesso!'),
                                      action: SnackBarAction(
                                        label: 'ok',
                                        textColor: Theme.of(context).cardColor,
                                        onPressed: () {},
                                      ),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                ),
                                const SizedBox(width: 10),
                                FloatingActionButton.small(
                                  elevation: 0,
                                  child: const Icon(
                                    Icons.playlist_add_check_outlined,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    final snackBar = SnackBar(
                                      content: const Text(
                                          'Livro reservado com sucesso!'),
                                      action: SnackBarAction(
                                        label: 'ok',
                                        textColor: Theme.of(context).cardColor,
                                        onPressed: () {},
                                      ),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
