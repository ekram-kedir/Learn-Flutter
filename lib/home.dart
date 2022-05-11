import 'package:flutter/material.dart';
import 'Card1.dart';
import 'Card2.dart';
import 'Card3.dart';
// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
    
    int _selectedIndex = 0;
// 8
  static List<Widget> pages = <Widget>[
  
    const Card1(),
    const Card2(),
    const Card3(),
  ];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          // 2
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: Show selected tab
     body: pages[_selectedIndex], 
      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
// 11
        onTap: _onItemTapped,
// 11
       
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
