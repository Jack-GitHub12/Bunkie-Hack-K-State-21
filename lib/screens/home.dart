import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 2;
  late PageController _pageController;
  @override void initState() {
    // TODO: implement initState
    super.initState();
        _pageController = PageController(initialPage: 0, keepPage: true);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          selectedFontSize: 12 ,
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color(0xff4bb29e),
          selectedItemColor: Color(0xff125194),
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: // Figma Flutter Generator ElcalendarsignWidget - FRAME
                  Container(
                height: 42 ,
                width: 42 ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: Color(0xff4bb29e),
                ),
                child: Icon(
                  Icons.today,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              activeIcon: Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: Color(0xff125194),
                ),
                child: Icon(
                  Icons.today,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            BottomNavigationBarItem(
                label: '',
                icon: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: Color(0xff4bb29e),
                  ),
                  child: Icon(
                    Icons.star_rounded,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                activeIcon: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: Color(0xff125194),
                  ),
                  child: Icon(
                    Icons.star_rounded,
                    size: 35,
                    color: Colors.white,
                  ),
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: Color(0xff4bb29e),
                  ),
                  child: Icon(
                    Icons.av_timer,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                activeIcon: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: Color(0xff125194),
                  ),
                  child: Icon(
                    Icons.av_timer,
                    size: 35,
                    color: Colors.white,
                  ),
                )),
           
          ],
          onTap: (index) {
            setState(() {
              selectedIndex = index;
              _pageController.jumpToPage(index);
              print('hello2');
            });
          },
          currentIndex: selectedIndex,
        ),
    );
  }
}