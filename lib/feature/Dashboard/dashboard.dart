import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_buddies/Features/contacts/contact_page.dart';
import 'package:my_buddies/Features/homepage.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

int bottomNavIndex = 0;


class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"),),
      body: dashBoardBody(bottomNavIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'home',),

          BottomNavigationBarItem(
              activeIcon: SvgPicture.asset('assets/dashboard/inactive.svg'),
              icon: SvgPicture.asset('assets/dashboard/active.svg'),
              label: 'contact'),

          BottomNavigationBarItem(
              activeIcon: Icon(Icons.person),
              icon: Icon(Icons.admin_panel_settings_outlined),
              label: 'profile'),

        ],
        currentIndex: bottomNavIndex,
        onTap: (index) {
          setState(() {
            bottomNavIndex = index;
          });
        },
      )
      ,
    );
  }

  Widget dashBoardBody(int bottomNavIndex) {
    switch (bottomNavIndex) {
      case 0:
        return HomePage();
      case 1:
        return ContactPage();
      case 2:
        return Text("");
      default:
        return Text("NOthing");
    }
  }
}