import 'package:flutter/material.dart';
import 'package:digital_library/src/modules/_export_modules.dart';

final Map<String, WidgetBuilder> routes = {
  BottomPage.routeName: (context) => const BottomPage(),
  HomePage.routeName: (context) => const HomePage(),
  ExplorePage.routeName: (context) => const ExplorePage(),
  MyBooksPage.routeName: (context) => const MyBooksPage(),
  SearchPage.routeName: (context) => const SearchPage(),
  BookDatatilsPage.routeName: (context) => const BookDatatilsPage(),
  RegisterBook.routeName: (context) => const RegisterBook(),
};
