import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_haber/category_news.dart';


class MenuBar extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
bool light = true;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  "https://images.unsplash.com/photo-1579532536935-619928decd08?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                ),
                Center(
                  child: Text("Kategoriler"),
                ),
              ],
            ),
          ),
          ListTile(
              leading: Icon(Icons.all_inbox),
              title: Text("GENEL"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CategoryNews(
                              category: "general",
                            )));
              }),
          ListTile(
            leading: Icon(Icons.business),
            title: Text("İŞ"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryNews(
                            category: "business",
                          )));
            },
          ),
          ListTile(
            leading: Icon(Icons.theater_comedy),
            title: Text("EĞLENCE"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryNews(
                            category: "entertainment",
                          )));
            },
          ),
          ListTile(
            leading: Icon(Icons.health_and_safety_outlined),
            title: Text("SAĞLIK"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryNews(
                            category: "health",
                          )));
            },
          ),
          ListTile(
            leading: Icon(Icons.sports_sharp),
            title: Text("SPOR"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryNews(
                            category: "sports",
                          )));
            },
          ),
          ListTile(
            leading: Icon(Icons.computer_outlined),
            title: Text("TEKNOLOJİ"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryNews(
                            category: "technology",
                          )));
            },
          ),
          ListTile(
            leading: Icon(Icons.science_outlined),
            title: Text("BİLİM"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryNews(
                            category: "science",
                          )));
            },
          ),
        ],
      ),
    );
  }
}
