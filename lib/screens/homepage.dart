import 'package:flutter/material.dart';
class HomepageScreen extends StatelessWidget {
  const HomepageScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text("Home")),

      ),
    );
  }
}
