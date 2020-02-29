import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text('3D MOdel'),
              accountEmail: Text("3DMOdel@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: ExactAssetImage('assert/A.jpg'),
              ),
              decoration: BoxDecoration(color: Color.fromRGBO(38, 42, 42, 1)),
            ),
            decoration: BoxDecoration(color: Color.fromRGBO(38, 42, 43, 1)),
          ),
          _CreateDrawerItem(
            name: '3D Model',
            icon: Icons.arrow_forward_ios,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _CreateDrawerItem(
            name: '3D Model',
            icon: Icons.arrow_forward_ios,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _CreateDrawerItem(
            name: '3D Model',
            icon: Icons.arrow_forward_ios,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _CreateDrawerItem(
            name: '3D Model',
            icon: Icons.arrow_forward_ios,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _CreateDrawerItem(
            name: '3D Model',
            icon: Icons.arrow_forward_ios,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _CreateDrawerItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onTap;
  _CreateDrawerItem({this.icon, this.name, this.onTap});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      trailing: Icon(icon),
      onTap: onTap,
    );
  }
}
