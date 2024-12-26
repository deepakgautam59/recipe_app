import 'package:flutter/material.dart';
import 'package:recepie_app/Screens/explorescreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int _selectedIndex = 0;
static List<Widget> pages=<Widget>[
    ExploreScreen(),
    Container(
      color: const Color.fromARGB(255, 76, 54, 244),
    ),
    Container(
      color: const Color.fromARGB(255, 64, 110, 0),
    ),

  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 65, 7),
        
        foregroundColor: Colors.white,
        title: Text('ElectroKart',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: const Color.fromARGB(255, 244, 182, 153),
        unselectedItemColor: const Color.fromARGB(255, 12, 11, 10),
        selectedItemColor: const Color.fromARGB(255, 255, 72, 0),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            label: 'To Buy',
          ),
          

        ],
      ),
    );
  }
}