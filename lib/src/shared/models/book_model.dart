// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';

class BookModel with ChangeNotifier {
  final Description description;
  final List<Links> links;
  final String title;
  final String covers;
  final List<String> subjectPlaces;
  final String firstPublishDate;
  final List<String> subjectPeople;
  final String key;
  final List<Authors> authors;
  final List<Excerpts> excerpts;
  final List<String> subjects;
  final Type type;
  final List<String> subjectTimes;
  final int latestRevision;
  final int revision;
  final Created created;
  final LastModified lastModified;
  bool isBookMark = false;

  BookModel({
    required this.description,
    required this.links,
    required this.title,
    required this.covers,
    required this.subjectPlaces,
    required this.firstPublishDate,
    required this.subjectPeople,
    required this.key,
    required this.authors,
    required this.excerpts,
    required this.subjects,
    required this.type,
    required this.subjectTimes,
    required this.latestRevision,
    required this.revision,
    required this.created,
    required this.lastModified,
    required this.isBookMark,
  });

  void tooggleBookMarked() {
    isBookMark = !isBookMark;
    print(isBookMark);
    notifyListeners();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['description'] = description.toJson();
    _data['links'] = links.map((e) => e.toJson()).toList();
    _data['title'] = title;
    _data['covers'] = covers;
    _data['subject_places'] = subjectPlaces;
    _data['first_publish_date'] = firstPublishDate;
    _data['subject_people'] = subjectPeople;
    _data['key'] = key;
    _data['authors'] = authors.map((e) => e.toJson()).toList();
    _data['excerpts'] = excerpts.map((e) => e.toJson()).toList();
    _data['subjects'] = subjects;
    _data['type'] = type.toJson();
    _data['subject_times'] = subjectTimes;
    _data['latest_revision'] = latestRevision;
    _data['revision'] = revision;
    _data['created'] = created.toJson();
    _data['last_modified'] = lastModified.toJson();
    return _data;
  }
}

class Description {
  Description({
    required this.type,
    required this.value,
  });
  final String type;
  final String value;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['value'] = value;
    return _data;
  }
}

class Links {
  Links({
    required this.title,
    required this.url,
    required this.type,
  });
  final String title;
  final String url;
  final Type type;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['url'] = url;
    _data['type'] = type.toJson();
    return _data;
  }
}

class Type {
  Type({
    required this.key,
  });
  final String key;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['key'] = key;
    return _data;
  }
}

class Authors {
  Authors({
    required this.author,
    required this.type,
  });
  final Author author;
  final Type type;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['author'] = author.toJson();
    _data['type'] = type.toJson();
    return _data;
  }
}

class Author {
  Author({
    required this.key,
  });
  final String key;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['key'] = key;
    return _data;
  }
}

class Excerpts {
  Excerpts({
    required this.excerpt,
    required this.pages,
    required this.author,
  });
  final String excerpt;
  final String pages;
  final Author author;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['excerpt'] = excerpt;
    _data['pages'] = pages;
    _data['author'] = author.toJson();
    return _data;
  }
}

class Created {
  Created({
    required this.type,
    required this.value,
  });
  final String type;
  final String value;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['value'] = value;
    return _data;
  }
}

class LastModified {
  LastModified({
    required this.type,
    required this.value,
  });
  final String type;
  final String value;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['value'] = value;
    return _data;
  }
}
