import 'package:MYAPP/screens/pdt_detail_screen.dart';
import 'package:flutter/material.dart';
import '../screens/homepage.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import '../screens/pdt_detail_screen.dart';
import '../models/cart.dart';
import '../screens/cart_screen.dart';
import '../models/orders.dart';

class SEMILAC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PlanetDiscount',
        theme:
            ThemeData(primaryColor: Colors.orange, accentColor: Colors.black),
        home: HomePage(),
        routes: {
          DetailPage.routeName: (ctx) => DetailPage(),
          CartScreen.routeName: (ctx) => CartScreen(),
        },
      ),
    );
  }
}
