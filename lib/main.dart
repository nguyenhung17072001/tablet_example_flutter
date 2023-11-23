
import 'package:flutter/material.dart';
import 'package:tablet_example/screen/demo_1.dart';

import 'screen/demo_2.dart';
import 'screen/demo_3.dart';

void main() {
  runApp(const NavigationContainer());
}

class NavigationContainer extends StatelessWidget {
  const NavigationContainer({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyTabBar(),
          
        //'/my-tab/home/food-detail': (context) => const FoodDetail(),  
      },
    );
  }
}




class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  _MyTabBarPageState createState() => _MyTabBarPageState();
}

class _MyTabBarPageState extends State<MyTabBar> {
  int _currentIndex = 0;

  // Danh sách các tab
  final List<Widget> _tabs = [
    Demo1(),
    Demo2(),
    //Demo3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Demo 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cabin),
            label: 'Demo 2',
            
          ),
          /* BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Demo 3',
          ), */
        ],
      ),
    );
  }
}
