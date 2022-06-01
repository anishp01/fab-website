import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'aboutus.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("My fab websites"),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Colors.green, Colors.red])))),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Colors.blue,
                Colors.red,
                // Colors.red,
                // Colors.blue,
              ])),
          child: ListView(
            children: [
              ListTile(
                leading: const Icon(Icons.policy),
                title: const Text('Privacy Policy'),
                onTap: () {
                  launchUrlString("google.com");
                },
              ),
              const Divider(
                color: Colors.red,
                thickness: 2.0,
              ),
              ListTile(
                leading: const Icon(Icons.info_outline),
                title: Text('About Us'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsScreen()),
                  );
                },
              ),
              const Divider(
                color: Colors.red,
                thickness: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.close),
                title: Text("Close"),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: [
          Box(
            "Youtube",
            "https://www.youtube.com/",
            Color.fromARGB(255, 236, 104, 104),
          ),
          Box(
            "Messenger",
            "https://www.messenger.com/",
            Color.fromARGB(255, 248, 236, 130),
          ),
          Box(
            "Facebook",
            "https://www.facebook.com/",
            Colors.blueAccent,
          ),
          Box(
            "Cricbuzz",
            "https://www.cricbuzz.com/",
            Colors.lightGreen,
          ),
          Box(
            "Flutter article",
            "https://flutterhope.com/",
            Colors.blue,
          ),
          Box(
            "Dart Tutorial",
            "https://dart-tutorial.com/",
            Colors.cyanAccent,
          ),
          Box(
            "Java Tutorial",
            "https://javaguide.technologychannel.org/",
            Colors.amberAccent,
          ),
          Box(
            "Github",
            "https://www.github.com/",
            Colors.tealAccent,
          ),
        ],
      ),
    );
  }
}

class Box extends StatelessWidget {
  final String title;
  final String url;
  final Color col;
  Box(this.title, this.url, this.col);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: col,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Text(
              title,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            )),
          ),
        ),
        onTap: () {
          launchUrlString(url);
        });
  }
}
