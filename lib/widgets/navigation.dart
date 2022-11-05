import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  NavigationDrawerState createState() => NavigationDrawerState();
}

class NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Favourite Recipe",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      drawer: const Drawer(
        child: MainDrawer(),
      ),
    );
  }
}

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1594616838951-c155f8d978a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Ahmed Ali",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      const Divider(),
      const SizedBox(
        height: 20.0,
      ),
      ListTile(
        onTap: () {
          Navigator.pop(context);
        },
        leading: const Icon(
          Icons.home_filled,
        ),
        title: const Text("Home"),
      ),
      ListTile(
        onTap: () {
          Navigator.pop(context);
        },
        leading: const Icon(
          Icons.place_sharp,
        ),
        title: const Text("Service Provision"),
      ),
      ListTile(
        onTap: () {
          Navigator.pop(context);
        },
        leading: const Icon(
          Icons.person_pin,
        ),
        title: const Text("My Information"),
      ),
      ListTile(
        onTap: () {
          Navigator.pop(context);
        },
        leading: const Icon(
          Icons.g_translate_outlined,
        ),
        title: const Text("Change Language"),
      ),
      ListTile(
        onTap: () {
          Navigator.pop(context);
        },
        leading: const Icon(
          Icons.logout,
        ),
        title: const Text("LogOut"),
      ),
    ]);
  }
}
