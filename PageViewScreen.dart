import 'package:contactapp/Pages/HighLight.dart';
import 'package:contactapp/Pages/HomePage.dart';
import 'package:contactapp/Pages/Organise.dart';
import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  PageController pageController = PageController(initialPage: 0);
  int selectedScreen = 0;

  List<Widget> screens = [
    const HomePage(),
    const HighLight(),
    const Organise()
  ];
  void onTapPage(int index) {
    setState(() {
      selectedScreen = index;
      pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            selectedScreen = value;
          });
        },
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white70,
          currentIndex: selectedScreen,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          onTap: onTapPage,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.contact_page_rounded,
                  size: 40,
                ),
                label: "Contact"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.highlight,
                  size: 40,
                ),
                label: "Highlights"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.sort,
                  size: 40,
                ),
                label: "Organise"),
          ]),
    );
  }
}
