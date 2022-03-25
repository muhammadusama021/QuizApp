import 'package:flutter/material.dart';
import 'package:quiz_app_practice/utlis/global_variables.dart';
class HomePage extends StatefulWidget {

  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:  homeScreenItems.elementAt(_selectedIndex),

      ),
      bottomNavigationBar: SafeArea(

        child: BottomNavigationBar(
          elevation: 20,

          items: [

            BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home",backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label:"Favorite",backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.person),label:"Profile",backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label:"Setting",backgroundColor: Colors.green),
          ],
          currentIndex: _selectedIndex,
          onTap: goToPage,
        ),
      ),
    );
  }

  void goToPage(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
