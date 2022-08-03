import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hardware_app/drawer_item.dart';
import 'package:hardware_app/people.dart';
import 'package:hardware_app/drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 69, 9, 129),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 24, 0),
          child: Column(
            children: [
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              //////////////////////////////////////////////////////////////////
              const Text(
                "Policies",
                style: TextStyle(color: Color.fromARGB(255, 171, 152, 152)),
                textAlign: TextAlign.end,
              ),
              const SizedBox(
                height: 20,
              ),
              DrawerItem(
                name: 'Share',
                icon: Icons.share,
                onPressed: () => onItemPressed(context, index: 0),
              ),
              const SizedBox(
                height: 5,
              ),
              DrawerItem(
                  name: 'Rate App',
                  icon: Icons.star_rate,
                  onPressed: () => onItemPressed(context, index: 1)),
              const SizedBox(
                height: 5,
              ),
              DrawerItem(
                  name: 'Settings',
                  icon: Icons.settings,
                  onPressed: () => onItemPressed(context, index: 2)),
              const SizedBox(
                height: 5,
              ),
              DrawerItem(
                  name: 'About Us',
                  icon: Icons.people_alt_outlined,
                  onPressed: () => onItemPressed(context, index: 3)),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),

              //////////////////////////////////////////////////////////////////
              const Text(
                "Policies",
                style: TextStyle(color: Color.fromARGB(255, 171, 152, 152)),
                textAlign: TextAlign.end,
              ),
              const SizedBox(
                height: 15,
              ),
              DrawerItem(
                  name: 'Term & Condition',
                  icon: Icons.note_alt,
                  onPressed: () => onItemPressed(context, index: 4)),
              const SizedBox(
                height: 5,
              ),
              DrawerItem(
                  name: 'Privacy Policy',
                  icon: Icons.policy_outlined,
                  onPressed: () => onItemPressed(context, index: 5)),
              const SizedBox(
                height: 5,
              ),
              DrawerItem(
                  name: 'FAQ',
                  icon: Icons.question_mark_outlined,
                  onPressed: () => onItemPressed(context, index: 6)),
              const SizedBox(
                height: 30,
              ),

              ////////////////////////////////////////////////////////////////
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),

              const Text(
                "Exit",
                style: TextStyle(color: Color.fromARGB(255, 171, 152, 152)),
                textAlign: TextAlign.end,
              ),
              const SizedBox(
                height: 20,
              ),
              DrawerItem(
                  name: 'Log out',
                  icon: Icons.logout,
                  onPressed: () => onItemPressed(context, index: 7)),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const People()));
        break;
      case 7:
        exit(0);
    }
  }
}
