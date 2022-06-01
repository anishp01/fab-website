import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  static const routeName = "/aboutus";
  const AboutUsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About US'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(aboutUS),
      ),
    );
  }
}

String aboutUS = """
sudip is hancy .

""";
