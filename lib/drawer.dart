//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
            icon: Icons.account_circle,
            text: 'Profil',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(0);
              //Navigator.push(context, MaterialPageRoute(builder: (context) => Profil()));
              Navigator.pushNamed(context, '/profil');
              //Navigator.pop(context);
            },
          ),
          _drawerItem(
            icon: Icons.folder,
            text: 'Portfolio',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(1);
              Navigator.pushNamed(context, '/portfolio');
              //Navigator.pop(context);
            },
          ),
          _drawerItem(
            icon: Icons.add_call,
            text: 'Contact',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(2);
              Navigator.pushNamed(context, '/contact');
              //Navigator.pop(context);
            },
          ),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text(
              'Keterangan',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          _drawerItem(
            icon: Icons.app_settings_alt_outlined,
            text: 'Setting',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(4);
              Navigator.pushNamed(context, '/setting');
              //Navigator.pop(context);
            },
          ),
          _drawerItem(
            icon: Icons.image,
            text: 'Gallery',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(5);
              Navigator.pushNamed(context, '/gallery');
              //Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/images/ning.jpg'), fit: BoxFit.cover),
    ),
    // otherAccountsPictures: [
    //   ClipOval(
    //     child: Image(image: AssetImage('assets/images/ning.jpg'), fit: BoxFit.cover),
    //   ),
    //   ClipOval(
    //     child: Image(image: AssetImage('assets/images/ning.jpg'), fit: BoxFit.cover),
    //   )
    // ],
    accountName: Text('HSP Watulintang Arumdanie'),
    accountEmail: Text('hspwatul@gmail.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
