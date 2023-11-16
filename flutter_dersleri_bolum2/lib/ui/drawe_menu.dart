import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
           children: [
            UserAccountsDrawerHeader(
              accountName:  const Text("Eren Elçi"),
               accountEmail: const Text("eren@gmail.com"),
               currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/images/miles.jpg')),
               otherAccountsPictures:  [
                InkWell(
                  onTap: (){
                   print('merhaba diğer hesba geçtinşz');
                   
                  },
                  child: CircleAvatar(backgroundColor: Colors.pink,
                  child: Text('EE'),),
                ),
                CircleAvatar(backgroundColor: Colors.grey,
                child: Text('EA'),),
               ], 
               ),
            Expanded(
              child: ListView(
                children:  [
                  const ListTile(
                    leading: Icon(Icons.home_filled),
                    title: Text('Ana sayfa'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  const ListTile(
                    leading: Icon(Icons.call),
                    title: Text('Ana sayfa'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  const ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text('Ana sayfa'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(),
                  InkWell(
                    onTap: (){
                      
                    },
                    splashColor: Colors.cyan,
                    child: const ListTile(
                      leading: Icon(Icons.home_filled),
                      title: Text('Ana sayfa'),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                  const AboutListTile(
                    
                    applicationName: 'Flutter Derseleri',
                    applicationIcon: Icon(Icons.snapchat),
                    applicationVersion: '2.0',
                    child: Text('About Us'),
                    applicationLegalese: null,
                    icon: Icon(Icons.save),
                    aboutBoxChildren: [
                      Text("Child1"),
                      Text("Child2"),
                      Text("Child3"),
                    ],
                  ),
                  
                  
                ],
              ),
            ),
           ],
        ),
      );
  }
}