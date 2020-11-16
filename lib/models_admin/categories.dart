import 'package:flutter/material.dart';
import 'add_category.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Catégories Liste';

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          return Container(
              child: Card(
            child: GridTile(
              child: Container(
                width: 200,
                margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/icons/icons8-face-powder-100.png'),
                ),
              ),
              /*footer: GridTileBar(
                title: Text(
                  'Catégorie $index',
                  style: TextStyle(fontSize: 14),
                ),
              ),*/
            ),
          ));
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddCategory()),
          )
        },
        child: Icon(
          Icons.add_circle,
          color: Colors.orange,
          size: 25,
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Liste Catégories',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: new List<Widget>.generate(16, (index) {
          return new GridTile(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(
                        'assets/icons/icons8-face-powder-100.png',
                      ),
                    ),
                    trailing: Text(
                      'Catégorie $index',
                      style: TextStyle(fontSize: 14),
                    ),
                    onTap: () {}),
              ),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddCategory()),
          )
        },
        child: Icon(
          Icons.add_circle,
          color: Colors.orange,
          size: 25,
        ),
      ),
    );
  }
}

///

class PopupMenuButtonScreen extends StatefulWidget {
  @override
  _PopupMenuButtonScreenState createState() => _PopupMenuButtonScreenState();
}

List<CustomPopupMenu> choices = <CustomPopupMenu>[
  CustomPopupMenu(
    title: 'Home',
    icon: Icons.home,
  ),
  CustomPopupMenu(
    title: 'Bookmarks',
    icon: Icons.bookmark,
  ),
  CustomPopupMenu(
    title: 'Settings',
    icon: Icons.settings,
  ),
];

class _PopupMenuButtonScreenState extends State<PopupMenuButtonScreen> {
  CustomPopupMenu _selectedChoices = choices[0];
  void _select(CustomPopupMenu choice) {
    setState(() {
      _selectedChoices = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Menu'),
        actions: <Widget>[
          PopupMenuButton<CustomPopupMenu>(
            child: Icon(
              Icons.more_vert,
            ),
            elevation: 3.2,
            onCanceled: () {
              print('You have not chossed anything');
            },
            tooltip: 'This is tooltip',
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.map((CustomPopupMenu choice) {
                return PopupMenuItem<CustomPopupMenu>(
                  value: choice,
                  child: Text(choice.title),
                );
              }).toList();
            },
          )
        ],
      ),
      body: bodyWidget(),
    );
  }

  bodyWidget() {
    return Container(
      child: SelectedOption(choice: _selectedChoices),
    );
  }
}

class SelectedOption extends StatelessWidget {
  final CustomPopupMenu choice;
  SelectedOption({Key key, this.choice}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              choice.icon,
              size: 80.0,
              color: Colors.grey,
            ),
            Text(
              choice.title,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomPopupMenu {
  CustomPopupMenu({
    this.title,
    this.icon,
  });
  String title;
  IconData icon;
}
