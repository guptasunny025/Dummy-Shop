import 'package:flutter/material.dart';
import 'package:yudoo/screens/cart_screen.dart';
import 'package:yudoo/screens/dashBoard_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List _bottomnavigation = [
    {
      'icon': Icon(
        Icons.home,
      ),
      'label': 'Home',
    },
    {
      'icon': Icon(
        Icons.favorite,
      ),
      'label': 'Favorite',
    },
    {
      'icon': Icon(Icons.shopping_basket),
      'label': 'Cart',
    },
    {
      'icon': Icon(
        Icons.verified_user,
      ),
      'label': 'Account',
    },
  ];

  @override
  void initState() {
    super.initState();
    _index = 0;
  }

  bool selectedText = false;
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    Widget child;
    switch (_index) {
      case 0:
        child = DashBoardScreen();
        break;
      case 1:
        child = DashBoardScreen();
        break;
      case 2:
        child = CartScreen();
        break;
      case 3:
        child = DashBoardScreen();
        break;
    }
    return Scaffold(
      body: SafeArea(child: child),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          ..._bottomnavigation.map(
            (bottomitem) => BottomNavigationBarItem(
              icon: bottomitem['icon'],
              backgroundColor:
                  selectedText == false ? Colors.grey : Colors.purple,
              label: bottomitem['label'],
            ),
          )
        ],
      ),
    );
  }
}
