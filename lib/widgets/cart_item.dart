import 'package:flutter/material.dart';
import '../models/cart.dart';
import 'package:provider/provider.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:MYAPP/screens/pdt_detail_screen.dart';

class CartPdt extends StatelessWidget {
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String name;
  CartPdt(this.id, this.productId, this.price, this.quantity, this.name);
  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: ValueKey(id),
        direction: DismissDirection.endToStart,
        background: Container(
          child: Icon(Icons.restore_from_trash),
          color: Colors.red,
        ),
        onDismissed: (direction) {
          Provider.of<Cart>(context).removeItem(productId);
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xfffb5d04),
                ),
                title: Text(name),
                subtitle: Text('Total: \ ${(price * quantity)} DH'),
                trailing: Text('$quantity x'),
              ),
              ButtonBar(alignment: MainAxisAlignment.start, children: [
                FlatButton(
                  textColor: Colors.redAccent,
                  onPressed: () =>
                      {Provider.of<Cart>(context).removeItem(productId)},
                  child: IconButton(
                      icon: Icon(
                        Icons.remove_shopping_cart,
                        size: 20,
                        color: Colors.red,
                      ),
                      onPressed: () =>
                          {Provider.of<Cart>(context).removeItem(productId)}),
                ),
                FlatButton(
                  textColor: Colors.redAccent,
                  onPressed: () {},
                  child: IconButton(
                      icon: Icon(
                        Icons.edit,
                        size: 20,
                        color: Colors.blue,
                      ),
                      onPressed: () => {
                            Navigator.of(context).pushNamed(
                                DetailPage.routeName,
                                arguments: productId)
                          }),
                ),
              ]),
            ],
          ),
        ));
  }
}

class MyCounter extends StatefulWidget {
  const MyCounter({
    Key key,
  }) : super(key: key);

  @override
  _MyCounterState createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int _currentAmount = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
          onTap: () {
            setState(() {
              _currentAmount -= 1;
            });
          },
        ),
        SizedBox(width: 15),
        Text(
          "$_currentAmount",
          //style: Theme.of(context).textTheme.title,
        ),
        SizedBox(width: 15),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          onTap: () {
            setState(() {
              _currentAmount += 1;
            });
          },
        ),
      ],
    );
  }
}
