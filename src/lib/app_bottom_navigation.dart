import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2/constants/app_color.dart';
import 'package:flutter_ecommerce_2/presentation/screens/home/home_screen.dart';

class AppNavigationTab extends StatefulWidget {
  const AppNavigationTab({Key? key}) : super(key: key);

  @override
  State<AppNavigationTab> createState() => _AppNavigationTabState();
}

class _AppNavigationTabState extends State<AppNavigationTab> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          Navigator(
            onGenerateRoute: (settings) {
              return MaterialPageRoute(
                builder: (context) => HomeScreen(),
              );
            },
          ),
          Navigator(
            onGenerateRoute: (settings) {
              return MaterialPageRoute(
                builder: (context) => Container(color: Colors.blue),
              );
            },
          ),
          Navigator(
            onGenerateRoute: (settings) {
              return MaterialPageRoute(
                builder: (context) => Container(color: Colors.green),
              );
            },
          ),
          Navigator(
            onGenerateRoute: (settings) {
              return MaterialPageRoute(
                builder: (context) => Container(color: Colors.yellow),
              );
            },
          ),
          Navigator(
            onGenerateRoute: (settings) {
              return MaterialPageRoute(
                builder: (context) => Container(color: Colors.white24),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              size: 30,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              size: 30,
            ),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 30,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) => _onTap(index),
        selectedItemColor: AppColors.selectedAppNavigation,
        unselectedFontSize: 12,
      ),
    );
  }

  _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
