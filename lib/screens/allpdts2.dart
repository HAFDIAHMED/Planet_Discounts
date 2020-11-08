import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import './pdtitem2.dart';

class AllProducts2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: pdts.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: pdts[i],
          child: PdtItem2(
            name: pdts[i].name,
            imageUrl: pdts[i].imgUrl,
          )),
    );
  }
}
