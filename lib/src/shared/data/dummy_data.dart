import 'package:digital_library/src/shared/models/_export_models.dart';

final List<AuthorModel> authorModels = [
  //0
  const AuthorModel(
    name: 'Nietzsche',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/1/1b/Nietzsche187a.jpg',
  ),
  //1
  const AuthorModel(
    name: 'Carlos Drum...',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Carlos_Drummond_de_Andrade%2C_1970.tif/lossy-page1-1200px-Carlos_Drummond_de_Andrade%2C_1970.tif.jpg',
  ),
  //2
  const AuthorModel(
    name: 'Dostoiévski',
    imageUrl:
        'https://s2.glbimg.com/AWA4Wi1hgE8YTHthEZF8_C8Uusw=/e.glbimg.com/og/ed/f/original/2020/03/04/477px-dostoevskij_1876.jpg',
  ),
  //3
  const AuthorModel(
    name: 'Stephen King',
    imageUrl:
        'https://observatoriodocinema.uol.com.br/wp-content/uploads/2021/08/stephen-king.jpg',
  ),
];

// final List<int> _covers = [11, 11];
final List<String> _subjectPlaces = ['11', '11'];
final List<Authors> _authors = [
  Authors(
    author: Author(key: 'J.R.R. Tolkien'),
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
    type: Type(key: 'title'),
    key: '/works/OL27448W',
    covers:
        'https://books.google.com/books/publisher/content/images/frontcover/R7KuDwAAQBAJ?fife=w200-h300',
    title: 'O Senhor dos Anéis: A Sociedade do Anel',
    authors: _authors,
    description: Description(
      type: '/type/text',
      value:
          "A Sociedade do Anel O volume inicial de O Senhor dos Anéis, lançado originalmente em julho de 1954, foi o primeiro grande épico de fantasia moderno, conquistando milhões de leitores e se tornando o padrão de referência para todas as outras obras do gênero até hoje. A imaginação prodigiosa de J.R.R. Tolkien e seu conhecimento profundo das antigas mitologias da Europa permitiram que ele criasse um universo tão complexo e convincente quanto o mundo real. A Sociedade do Anel começa no Condado, a região rural do oeste da Terra-média onde vivem os diminutos e pacatos hobbits. Bilbo Bolseiro, um dos raros aventureiros desse povo, cujas peripécias foram contadas em O Hobbit, resolve ir embora do Condado e deixa sua considerável herança nas mãos de seu jovem parente Frodo. O mais importante legado de Bilbo é o anel mágico que costumava usar para se tornar invisível. No entanto, o mago Gandalf, companheiro de aventuras do velho hobbit, revela a Frodo que o objeto é o Um Anel, a raiz do poder demoníaco de Sauron, o Senhor Sombrio, que deseja escravizar todos os povos da Terra-média. A única maneira de eliminar a ameaça de Sauron é destruir o Um Anel nas entranhas da própria montanha de fogo onde foi forjado. A revelação faz com que Frodo e seus companheiros hobbits Sam, Merry e Pippin deixem a segurança do Condado e iniciem uma perigosa jornada rumo ao leste. Ao lado de representantes dos outros Povos Livres que resistem ao Senhor Sombrio, eles formam a Sociedade do Anel. Alguém uma vez disse que o mundo dos leitores de língua inglesa se divide entre os que já leram O Senhor dos Anéis e os que um dia lerão o livro. Com esta nova tradução da obra, o fascínio dessa aventura atemporal ficará ainda mais evidente para os leitores brasileiros, tanto os que já conhecem a saga como os que estão prestes a descobrir seu encanto.",
    ),
    firstPublishDate: 'nov. de 2019',
    isBookMark: false,
    rating: 4.9,
    copys: 14,
    pages: 576,
    subjectPlaces: _subjectPlaces,
    subjectPeople: _subjectPlaces,
    excerpts: _excerpts,
    links: _links,
    subjects: _subjectPlaces,
    subjectTimes: _subjectPlaces,
    created: Created(
      type: '/type/datetime',
      value: '2009-10-13T02:46:28.838662',
    ),
    latestRevision: 94,
    revision: 94,
    lastModified: LastModified(
      type: '/type/datetime',
      value: '2022-02-05T15:26:38.106995',
    ),
  ),
  BookModel(
    description: Description(
      type: '/type/text',
      value:
          "Friedrich Nietzsche foi filósofo, escritor, poeta, filólogo e músico e é considerado um dos mais influentes e importantes pensadores modernos do século XIX. A Gaia Ciência (em alemão: Die fröhliche Wissenschaft) é o último trabalho da fase positiva de Nietzsche, aparentando-se a 'Aurora' e a 'Humano, Demasiado Humano' pelo estilo leve, ameno e florido em que é composto. Essa é uma das obras mais lidas do autor. Também é nesse livro que Nietzsche se refere, pela primeira vez, a Zaratustra, antigo profeta persa, criador da doutrina chamada zoroastrismo, tornado por Nietzsche arauto de sua filosofia, em seu livro 'Assim Falou Zaratustra'.",
    ),
    links: _links,
    title: 'A Gaia Ciência',
    covers:
        'https://books.google.com/books/publisher/content/images/frontcover/lJmNDwAAQBAJ?fife=w200-h300',
    subjectPlaces: _subjectPlaces,
    firstPublishDate: 'nov. de 2019',
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
    rating: 4.9,
    copys: 14,
    pages: 576,
  ),
  BookModel(
    description: Description(
      type: '/type/text',
      value:
          '"Se você acha que está tendo dificuldades na vida, precisa ler este livro. Com as lições que a favela nos dá dia após dia, reinventando-se, criando, fazendo muito com pouco e empreendendo com recursos escassos, Rick Chesther nos mostra como, a partir do zero, ou do "menos um", é possível sair da inércia e vencer na vida. A favela venceu traz uma favela que inspira pela coragem, pela força de vontade, pela esperança, pela fé e pelo brilho no olhar. Traz a favela que não se acovarda, que não desiste, que passa por perrengues, mas que se sacode para poder ter dignidade e então criar uma história nova, mesmo nos momentos de maior dor. Este livro mostra que a próxima batalha sempre existirá, mas que precisamos aprender a considerar as tantas vitórias que podem estar passando despercebidas por muitos. A favela venceu é uma lição de vida para quem quer se reerguer, lutar e criar novas possibilidades, contando com gente de verdade que não abandona o outro no meio da batalha. Um livro para entender a mentalidade de "fazer com" na era onde ninguém pode contar com ninguém. Um livro para decifrar que "quando se sabe onde o calo aperta", qualquer pessoa é capaz de tirar um sonho do papel e fazer milagre pra colocar comida na mesa, e desse sonho criar algo novo, inspirar pessoas e prosperar. Um livro para buscar força nas dificuldades e entender o verdadeiro conceito de "vencer na vida". Um livro escrito por gente simples, que estuda em uma universidade chamada "Faculdade da Vida". A favela venceu é um hino a ser celebrado por todos nós, que temos sangue correndo nas veias e não desistimos."',
    ),
    links: _links,
    title: 'A favela venceu',
    covers:
        'https://books.google.com/books/publisher/content/images/frontcover/G9jkDwAAQBAJ?fife=w200-h300',
    subjectPlaces: _subjectPlaces,
    firstPublishDate: 'mai. de 2020',
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
    rating: 4.9,
    copys: 14,
    pages: 576,
  ),
  BookModel(
    description: Description(
      type: '/type/text',
      value:
          'O volume 16 contém os textos publicados por Freud entre 1923 e 1925, dos quais se destaca O Eu e o Id, um de seus principais trabalhos teóricos, no qual faz a mais detalhada exposição da estrutura e do funcionamento da psique, lançando a hipótese de que ela se dividiria em três partes: Id, Eu (ou "ego") e Super-eu (ou "superego"). O segundo texto, "Autobiografia", contém, na verdade, poucas informações pessoais. É um relato do desenvolvimento intelectual do autor e de suas contribuições para o surgimento e a elaboração da psicanálise. Ensaios de menor extensão incluídos no volume, mas bastante influentes, são, entre outros, "A dissolução do complexo de Édipo" e "A negação". Este e-book não contém as imagens presentes na edição impressa.',
    ),
    links: _links,
    title: 'O Eu e o Id',
    covers:
        'https://books.google.com/books/content/images/frontcover/nMtPgRFim2AC?fife=w200-h300',
    subjectPlaces: _subjectPlaces,
    firstPublishDate: 'jun. de 2011',
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
    rating: 4.9,
    copys: 14,
    pages: 576,
  ),
];
