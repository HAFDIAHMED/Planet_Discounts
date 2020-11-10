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
      name: 'sac à main, montre et bracelet',
      imgUrl:
          'https://planetdiscounts.ma/assets/images/products/1602199935Tvis5liJ.png',
      price: 249,
      category: 'sac',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ),
    Product(
      id: '2',
      name: 'Packs Homme COMPLET',
      imgUrl:
          'https://planetdiscounts.ma/assets/images/products/1602188594yUlXVqnN.png',
      price: 199,
      category: 'Pack',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ),
    Product(
      id: '3',
      name: 'Pack homme special 2020',
      imgUrl:
          'https://planetdiscounts.ma/assets/images/products/16022113401kGqpRDy.png',
      price: 349,
      category: 'Pack',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ),
    Product(
      id: '4',
      name: 'Survêtement Nike 2020',
      imgUrl:
          'https://planetdiscounts.ma/assets/images/products/1602893621ZYECYReF.png',
      price: 249,
      category: 'vêtements',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    ),
    Product(
      id: '5',
      name: 'Pantalon Classe',
      imgUrl:
          'https://planetdiscounts.ma/assets/images/products/1602211164sVH6N1Yk.png',
      price: 159,
      category: 'vêtements',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ),
    Product(
      id: '6',
      name: 'Chaussures Armani',
      imgUrl:
          'https://planetdiscounts.ma/assets/images/products/1602194737KRkUL5J3.png',
      price: 230,
      category: 'vêtements',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    ),
    Product(
      id: '7',
      name: "PULL Simple de L'automne 2020",
      imgUrl:
          'https://planetdiscounts.ma/assets/images/products/1602892762qjcK7FaD.png',
      price: 149,
      category: 'Electronique',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    ),
    Product(
      id: '8',
      name:
          "Sans fil écouteurs Bluetooth 5.0 avec powerbank 2200mAh boîte de charge sans fil",
      imgUrl:
          'https://planetdiscounts.ma/assets/images/products/1602196108nWaz5Hnv.png',
      price: 299,
      category: 'Electronique',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    ),
    Product(
      id: '9',
      name: "094 OMBRE À PAUPIÈRES SEMILAC CRÈME OR ROSE 7 ML",
      imgUrl:
          'https://semilac.pl/media/catalog/product/cache/c66786404a7109b68bb918f8905d342c/s/e/semilac_cie_do_powiek_w_kremie_pink_gold_094_3.jpg',
      price: 4,
      category: 'Electronique',
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    ),
    Product(
      id: '10',
      name: " SEMILAC LIPADKA CLASSY LIPS BERRY NUDE 005",
      imgUrl:
          'https://semilac.pl/media/catalog/product/cache/c66786404a7109b68bb918f8905d342c/s/k/sklep_www_pomadki_klasyczne_005.jpg',
      price: 4,
      category: 'Electronique',
      description:
          " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    ),
  ];
  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
