import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_drawer_tile.dart';

import '../pages/settings_page.dart';
import '../services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout(){
    //firebase
    final _firebaseAuth = AuthService();
     _firebaseAuth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //app logo
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size:80,
              color:Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          //home list tile
          MyDrawerTile(
              text: "H O M E",
              onTap: () => Navigator.pop(context),
              icon: Icons.home,
          ),

          //settings list tile
          MyDrawerTile(
            text: "S E T T I N G S",
            onTap: (){
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  )
              );
            },
            icon: Icons.settings,
          ),


          const Spacer(),

          //logout list tile
          MyDrawerTile(
            text: "L O G  O U T",
            onTap: logout,
            icon: Icons.logout_rounded,
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
