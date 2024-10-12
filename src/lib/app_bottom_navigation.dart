import 'package:flutter/material.dart';

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
                builder: (context) => Container(color: Colors.red),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) => _onTap(index),
      ),
    );
  }

  _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
