import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;

  Product(
      {@required this.id,
      @required this.category,
      @required this.name,
      @required this.description,
      @required this.imgUrl,
      @required this.price});
}

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: '1',
      name: '001 GEL POLONAIS SEMILAC STRONG WHITE 7ML',
      imgUrl:
          'https://semilac.pl/media/catalog/product/cache/c66786404a7109b68bb918f8905d342c/0/0/001_uv_hybrid_semilac_strong_white_7ml_1.jpg',
      price: 5,
      category: 'Manucure',
      description:
          'nspiration:Le royaume du blanc et du grand bleu. Abrite de puissants ours polaires, de fiers lions de mer et d adorables phoques. De vastes étendues de l Arctique impénétrable et solitaire attendent d être découvertes. Le blanc pur de la neige et de la glace non polluées gèlera tous vos amis! Caractéristique:Blanche neige, parfaite pour la décoration "française".Couverture de couleur - complète.',
    ),
    Product(
      id: '2',
      name: 'BASE POUR VERNIS HYBRIDES SEMILAC CARE BASE KERATIN + BIOTIN 7ML',
      imgUrl:
          'https://semilac.pl/media/catalog/product/cache/c66786404a7109b68bb918f8905d342c/c/a/care-base.jpg',
      price: 5,
      category: 'Manucure',
      description:
          'Nous avons créé notre nouvelle base de soin Semilac pour soutenir la régénération des ongles fragilisés, fins et cassants. Nous l avons enrichi de fibres de biotine, de kératine, de vitamine E et de nylon qui enveloppent et remplissent la plaque à ongles. En conséquence, une couche protectrice est créée sur sa surface, qui la protège contre les dommages mécaniques, la fissuration et la rupture. Il permet également la superstructure et l extension du clou jusqu à 10 mm. Grâce à sa consistance depaisseur moyenne, notre base est facile à appliquer.Son avantage est également la nuance transparente du rose pudding - il peut être utilisé comme base pour tous les vernis hybrides ou directement appliqué dessus avec un dessus, ce qui vous permet d obtenir l effet d une manucure naturelle.',
    ),
    Product(
      id: '3',
      name: 'S890 SEMILAC ONE STEP HYBRID MIDNIGHT BLUE 5ML',
      imgUrl:
          'https://semilac.pl/media/catalog/product/cache/c66786404a7109b68bb918f8905d342c/s/8/s890.png',
      price: 4,
      category: 'Manucure',
      description:
          'DÉCOUVREZ LE VERNIS HYBRIDE INNOVANT SEMILAC ONE STEP EN BOUTEILLE .Vous n avez jamais essayé une manucure hybride et vous rêvez de beaux ongles bien entretenus? Surtout pour vous, nous avons créé un produit avec lequel la  première manucure hybride  sera un jeu d enfant. ',
    ),
    Product(
      id: '4',
      name: 'LAMPE UV LED 36W SEMILAC DIAMOND BLANC',
      imgUrl:
          'https://semilac.pl/media/catalog/product/cache/c66786404a7109b68bb918f8905d342c/b/i/biala_sklep.jpg',
      price: 4,
      category: 'Manucure',
      description:
          "ampe LED UV 36W blanche extrêmement élégante en forme de diamant avec technologie double LED qui combine deux types de lumière. Cette technologie permet à notre lampe de polymériser parfaitement tous les vernis hybrides et les gels Semilac. C'est un vrai diamant parmi les lampes!",
    ),
    Product(
      id: '5',
      name: 'AMPOULE POUR LAMPES UV SEMILAC 9 W',
      imgUrl:
          'https://semilac.pl/media/catalog/product/cache/c66786404a7109b68bb918f8905d342c/z/a/zarowka9w1.jpg',
      price: 4,
      category: 'Manucure',
      description:
          'Ampoule UV professionnelle de 9 W, utilisée dans les lampes pour le séchage des gels Semilac et des vernis hybrides.',
    ),
    Product(
      id: '6',
      name: ' KIT DE TÉLÉCHARGEMENT HYBRIDE SEMILAC',
      imgUrl:
          'https://semilac.pl/media/catalog/product/cache/c66786404a7109b68bb918f8905d342c/z/e/zestaw_1.jpg',
      price: 4,
      category: 'Manucure',
      description:
          "Vous vous demandez comment obtenir l'hybride? Nous répondons - avec Semilac! C'est encore plus facile maintenant! Si vous souhaitez retirer l'hybride de vos ongles à la maison, tout ce dont vous avez besoin est notre kit de suppression hybride Semilac unique ! Vous trouverez ici tous les produits nécessaires pour télécharger l'hybride et un dépliant expliquant ÉTAPE PAR ÉTAPE sur la façon de télécharger l'hybride.",
    ),
    Product(
      id: '7',
      name: "PALETTE D'OMBRES À PAUPIÈRES SEMILAC SPECIAL DAY",
      imgUrl:
          'https://semilac.pl/media/catalog/product/cache/c66786404a7109b68bb918f8905d342c/p/a/paletka_special_day_strona.jpg',
      price: 4,
      category: 'Maquillage',
      description:
          "Une palette unique de cinq fards à paupières aux tons chauds , parfaite pour le maquillage de jour et de soirée. Les ombres de la palette Special Day sont les couleurs or clair, violet et noir , avec différentes finitions: satiné, mat et brillant. Une bonne pigmentation des ombres vous permet de profiter longtemps de leur couleur, en soulignant magnifiquement l'œil. Grâce à la structure parfaite de toutes les couleurs, vous pouvez les appliquer de n'importe quelle manière - du bout du doigt ou avec un pinceau. ",
    ),
    Product(
      id: '8',
      name: "401 SEMILAC NATURAL BEIGE MATTE SHADOW 1,2 G",
      imgUrl:
          'https://semilac.pl/media/catalog/product/cache/c66786404a7109b68bb918f8905d342c/s/k/sklep_www_cienie_matowe_401.jpg',
      price: 4,
      category: 'Maquillage',
      description:
          "La teinte mate Semilac Natural Beige 401 est un beige clair et neutre dans une teinte de peau saine. Parfait pour unifier la couleur de la paupière, à appliquer comme couleur de base ou pour éclaircir le coin interne",
    ),
    Product(
      id: '9',
      name: "094 OMBRE À PAUPIÈRES SEMILAC CRÈME OR ROSE 7 ML",
      imgUrl:
          'https://semilac.pl/media/catalog/product/cache/c66786404a7109b68bb918f8905d342c/s/e/semilac_cie_do_powiek_w_kremie_pink_gold_094_3.jpg',
      price: 4,
      category: 'Maquillage',
      description:
          "Ombre à paupières bijou en crème, correspondant à la couleur du vernis hybride Semilac 094 Or Rose. C'est une lueur délicatement rose enrichie d'éclairs d'or, qui fonctionnera bien dans un maquillage de jour plus visible et dans le cadre d'un maquillage de mise en valeur pour une soirée. La formule légère se caractérise par un séchage rapide sur la paupière, une durabilité exceptionnelle et la possibilité d'une combinaison illimitée avec les couleurs de base du fond de teint. L'éclat dichromatique plaira aux femmes qui apprécient l'élégance classique assaisonnée d'une pincée de féminité significative.",
    ),
    Product(
      id: '10',
      name: " SEMILAC LIPADKA CLASSY LIPS BERRY NUDE 005",
      imgUrl:
          'https://semilac.pl/media/catalog/product/cache/c66786404a7109b68bb918f8905d342c/s/k/sklep_www_pomadki_klasyczne_005.jpg',
      price: 4,
      category: 'Maquillage',
      description:
          " Classy Lips Berry Nude 005  est une excellente combinaison d'une couverture parfaite et d'une texture soyeuse. Le beige foncé avec une délicate touche de rouge rouillé semble phénoménal. Le rouge à lèvres est riche en émollients et pigments pour un fini satiné . L'enrichissement de la formule en vitamine E  améliore l'élasticité et protège la peau sensible des lèvres contre les effets néfastes des facteurs externes. Grâce à des pigments hautement saturés, les lèvres gagneront en définition tout en conservant une structure délicate et crémeuse.",
    ),
  ];
  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
