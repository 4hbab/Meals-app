import 'package:flutter/material.dart';
import 'package:meals_app/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  // const MainDrawer({ Key? key }) : super(key: key);
  Widget _buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      onTap: () => tapHandler(),
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        Container(
          height: 120,
          width: double.infinity,
          color: Theme.of(context).accentColor,
          padding: const EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          child: Text(
            'Cooking Up!',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        _buildListTile(
          'Meals',
          Icons.restaurant,
          () {
            Navigator.of(context).pushNamed('/');
          },
        ),
        _buildListTile('Filters', Icons.settings, () {
          Navigator.of(context).pushNamed(FiltersScreen.routeName);
        }),
      ]),
    );
  }
}
