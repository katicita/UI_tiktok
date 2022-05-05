import 'package:flutter/material.dart';

import 'body_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BodyScreen()),
      bottomNavigationBar: _bottomNav(),
    );
  }

  Widget _bottomNav() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('assets/icons/inicio.png'),
          ),
          label: "Inicio",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('assets/icons/tendencias.png'),
          ),
          label: "Tendencias",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('assets/icons/plus.png'),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('assets/icons/bandeja.png'),
          ),
          label: "Bandeja",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('assets/icons/yo.png'),
          ),
          label: "Yo",
        ),
      ],
    );
  }
}
