import 'package:flutter/material.dart';
import 'package:flutter_newsfeed/screens/navBar.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        title:
            Center(child: Text("ABout", style: TextStyle(color: Colors.black))),
        backgroundColor: Colors.white,
      ),
    );
  }
}
