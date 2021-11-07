import 'package:bunkie/constants/colors.dart';
import 'package:bunkie/tabs/match_tab.dart';
import 'package:bunkie/tabs/messages_tab.dart';
import 'package:bunkie/tabs/settings_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 2;
  late PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0, keepPage: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'lib/assets/bunkies_logo.png',
              height: 50,
              width: 50,
              fit: BoxFit.fitHeight,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Bunkie',
              style: GoogleFonts.fredokaOne(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            )
          ],
        ),
        backgroundColor: primaryColor1,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedFontSize: 12,
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
              height: 42,
              width: 42,
              child: Icon(
                Icons.home,
                size: 30,
                color: primaryColor2,
              ),
            ),
            activeIcon: Container(
              height: 42,
              width: 42,
              child: Icon(
                Icons.home,
                size: 30,
                color: primaryColor1,
              ),
            ),
          ),
          BottomNavigationBarItem(
              label: '',
              icon: Container(
                width: 42,
                height: 42,
                child: Icon(
                  Icons.chat,
                  size: 27,
                  color: primaryColor2,
                ),
              ),
              activeIcon: Container(
                width: 42,
                height: 42,
                child: Icon(
                  Icons.chat,
                  size: 27,
                  color: primaryColor1,
                ),
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Container(
                width: 42,
                height: 42,
                child: Icon(
                  Icons.settings,
                  size: 30,
                  color: primaryColor2,
                ),
              ),
              activeIcon: Container(
                width: 42,
                height: 42,
                child: Icon(
                  Icons.settings,
                  size: 30,
                  color: primaryColor1,
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
      body: getBody(),
    );
  }

  Widget getBody() {
    return Column(
      children: [
        Expanded(
          child: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: [
              MatchTab(),
              MessagesTab(),
              SettingsTab(),
            ],
          ),
        ),
        Container(
          height: 2,
          width: MediaQuery.of(context).size.width,
          color: primaryColor2,
        )
      ],
    );
  }
}
