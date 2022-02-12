import 'package:digital_library/src/shared/models/_export_models.dart';

// final List<InfoModel> infoModels = [
//   const InfoModel.book(data: "4.8", data1: "4", data2: "434")
// ];

final List<AuthorModel> authorModels = [
  //0
  const AuthorModel(
    name: 'J.R.R. Tolkien',
    imageUrl:
        'https://i.scdn.co/image/ab6761610000e5eb09bf4814c6585e1f69dfeef7',
  ),
  //1
  const AuthorModel(
    name: 'Aloe Blacc',
    imageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  //2
  const AuthorModel(
    name: 'Agnes',
    imageUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
  ),
  //3
  const AuthorModel(
    name: 'Vargas & Lagola',
    imageUrl:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
  ),
  //4
  const AuthorModel(
    name: 'Joe Janiak',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  //5
  const AuthorModel(
    name: 'Bonn',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  //6
  const AuthorModel(
    name: 'A R I Z O N A',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  //7
  const AuthorModel(
    name: 'Imagine Dragons',
    imageUrl:
        'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80',
  ),
  //8
  const AuthorModel(
    name: 'Noonie Bao',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
];

// final List<int> _covers = [11, 11];
final List<String> _subjectPlaces = ['11', '11'];
final List<Authors> _authors = [
  Authors(
    author: Author(key: '/authors/OL26320A'),
    type: Type(
      key: '/type/author_role',
    ),
  ),
  Authors(
    author: Author(key: '/authors/OL2878413A'),
    type: Type(
      key: '/type/author_role',
    ),
  ),
];
final List<Author> _author = [Author(key: '')];
final List<Excerpts> _excerpts = [
  Excerpts(excerpt: 'excerpt', pages: 'pages', author: _author[0])
];
final List<Links> _links = [
  Links(title: 'title', url: 'ur1l', type: Type(key: 'title'))
];

final List<BookModel> dummybooks = [
  BookModel(
    description: Description(
      type: '/type/text',
      value:
          "In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, The Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell, by chance, into the hands of the hobbit, Bilbo Baggins. From his fastness in the Dark Tower of Mordor, Sauron's power spread far and wide. He gathered all the Great Rings to him, but ever he searched far and wide for the One Ring that would complete his dominion. On his eleventy-first birthday Bilbo disappeared, bequeathing to his young cousin Frodo the Ruling Ring and a perilous quest --- to journey across Middle-earth, deep into the shadow of the Dark Lord, and destroy the Ring by casting it into the Cracks of Doom. THE LORD OF THE RINGS tells of the great quest undertaken by Frodo and the Fellowship of the Ring: Gandalf the Wizard, Merry, Pippin, and Sam, Gimli the Dwarf, Legolas the Elf, Boromir of Gondor, and a tall, mysterious stranger called Strider.",
    ),
    links: _links,
    title: 'The Lord of the Rings',
    covers: 'https://covers.openlibrary.org/b/id/12003171-L.jpg',
    subjectPlaces: _subjectPlaces,
    firstPublishDate: 'September 3, 2001',
    subjectPeople: _subjectPlaces,
    key: '/works/OL27448W',
    authors: _authors,
    excerpts: _excerpts,
    subjects: _subjectPlaces,
    type: Type(key: 'title'),
    subjectTimes: _subjectPlaces,
    latestRevision: 94,
    revision: 94,
    created: Created(
      type: '/type/datetime',
      value: '2009-10-13T02:46:28.838662',
    ),
    lastModified: LastModified(
      type: '/type/datetime',
      value: '2022-02-05T15:26:38.106995',
    ),
    isBookMark: false,
  ),
  BookModel(
    description: Description(
      type: '/type/text',
      value:
          "In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, The Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell, by chance, into the hands of the hobbit, Bilbo Baggins. From his fastness in the Dark Tower of Mordor, Sauron's power spread far and wide. He gathered all the Great Rings to him, but ever he searched far and wide for the One Ring that would complete his dominion. On his eleventy-first birthday Bilbo disappeared, bequeathing to his young cousin Frodo the Ruling Ring and a perilous quest --- to journey across Middle-earth, deep into the shadow of the Dark Lord, and destroy the Ring by casting it into the Cracks of Doom. THE LORD OF THE RINGS tells of the great quest undertaken by Frodo and the Fellowship of the Ring: Gandalf the Wizard, Merry, Pippin, and Sam, Gimli the Dwarf, Legolas the Elf, Boromir of Gondor, and a tall, mysterious stranger called Strider.",
    ),
    links: _links,
    title: 'The Lord of the Rings',
    covers: 'https://covers.openlibrary.org/b/id/12003171-L.jpg',
    subjectPlaces: _subjectPlaces,
    firstPublishDate: 'September 3, 2001',
    subjectPeople: _subjectPlaces,
    key: '/works/OL27448W',
    authors: _authors,
    excerpts: _excerpts,
    subjects: _subjectPlaces,
    type: Type(key: 'title'),
    subjectTimes: _subjectPlaces,
    latestRevision: 94,
    revision: 94,
    created: Created(
      type: '/type/datetime',
      value: '2009-10-13T02:46:28.838662',
    ),
    lastModified: LastModified(
      type: '/type/datetime',
      value: '2022-02-05T15:26:38.106995',
    ),
    isBookMark: false,
  ),
];
