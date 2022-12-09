import 'package:flutter/material.dart';

class FooterMenu{
  late BuildContext context;
  FooterMenu(this.context);

  void goScreen(int newScreen){
    print("Cambiando a la pantalla: $newScreen");
    switch (newScreen){
      case 0:
        Navigator.popAndPushNamed(context, "/home");
        break;
      case 1:
        Navigator.popAndPushNamed(context, "/register");
        break;
      case 3:
        Navigator.popAndPushNamed(context, "/login");
        break;
      case 4:
        Navigator.popAndPushNamed(context, "/map");
        break;
      case 5:
        Navigator.popAndPushNamed(context, "/user");
        break;
      case 6:
        Navigator.popAndPushNamed(context, "/driver");
        break;

    }
  }

  getFooterMenu(int index){
    var navb = BottomNavigationBar(
      currentIndex: index,
      selectedItemColor: Colors.black,
      showSelectedLabels: true,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
        label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.note_alt_sharp),
          label: 'Register',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.login),
          label: 'Login',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Map',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'User',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.car_rental),
          label: 'Driver',
        ),
      ],
      onTap: (int index){
        goScreen(index);
      });
    var theme = Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.purple[800]),
      child: navb);
    return theme;
  }
}