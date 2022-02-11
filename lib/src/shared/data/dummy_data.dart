import 'package:digital_library/src/shared/models/_export_models.dart';

final List<InfoModel> infoModels = [
  const InfoModel.book(data: "4.8", data1: "4", data2: "434")
];

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

final List<BookModel> dummybooks = [
  BookModel(
    name: "A Sociedade do Anel",
    authorModel: authorModels[0],
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/61VLT3aMviL._SX321_BO1,204,203,200_.jpg',
    sinopse:
        'Em uma terra fantástica e única, um hobbit recebe de presente de seu tio um anel mágico e maligno que precisa ser destruído antes que caia nas mãos do mal.Para isso, o hobbit Frodo tem um caminho árduo pela frente, onde encontra',
    year: 2001,
    isBookMarked: false,
    infoModel: infoModels[0],
  ),
  BookModel(
    name: "Heaven",
    authorModel: authorModels[0],
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    sinopse:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    year: 2006,
    isBookMarked: false,
    infoModel: infoModels[0],
  ),
  BookModel(
    name: "SOS",
    authorModel: authorModels[0],
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    sinopse:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    year: 2006,
    isBookMarked: false,
    infoModel: infoModels[0],
  ),
  BookModel(
    name: "Tough Love ",
    authorModel: authorModels[0],
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    sinopse:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    year: 2006,
    isBookMarked: false,
    infoModel: infoModels[0],
  ),
  BookModel(
    name: "Bad Reputation ",
    authorModel: authorModels[0],
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    sinopse:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    year: 2006,
    isBookMarked: false,
    infoModel: infoModels[0],
  ),
  BookModel(
    name: "Ain't a Thing ",
    authorModel: authorModels[0],
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    sinopse:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    year: 2006,
    isBookMarked: false,
    infoModel: infoModels[0],
  ),
  BookModel(
    name: 'Hold The Line ',
    authorModel: authorModels[0],
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    sinopse:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    year: 2006,
    isBookMarked: false,
    infoModel: infoModels[0],
  ),
  BookModel(
    name: "Freak ",
    authorModel: authorModels[0],
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    sinopse:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    year: 2006,
    isBookMarked: false,
    infoModel: infoModels[0],
  ),
  BookModel(
    name: "Excuse Me Mr. Sir ",
    authorModel: authorModels[0],
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    sinopse:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    year: 2006,
    isBookMarked: false,
    infoModel: infoModels[0],
  ),
  BookModel(
    name: "Heart Upon My Sleeve ",
    authorModel: authorModels[0],
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    sinopse:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    year: 2006,
    isBookMarked: false,
    infoModel: infoModels[0],
  ),
  BookModel(
    name: "Never Leave Me ",
    authorModel: authorModels[0],
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    sinopse:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    year: 2006,
    isBookMarked: false,
    infoModel: infoModels[0],
  ),
  BookModel(
    name: "Fades Away ",
    authorModel: authorModels[0],
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    sinopse:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
    year: 2006,
    isBookMarked: false,
    infoModel: infoModels[0],
  ),
];
