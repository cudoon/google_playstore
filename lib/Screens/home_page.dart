import 'package:flutter/material.dart';
import '/Screens/widgets/tab1.dart';
import '/Screens/widgets/tab2.dart';
import '/Screens/widgets/tab3.dart';
import '/Screens/widgets/tab4.dart';
import '/Screens/widgets/tab5.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(110),
          child: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            title: Container(
              height: 53,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                style: const TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                    hintText: 'Search for app & and games',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(width: 2.5, color: Colors.grey.shade300),
                    ),
                    filled: true,
                    fillColor: Colors.blueGrey.shade50,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(width: 2.5, color: Colors.grey.shade300),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black45,
                      size: 30,
                    )),
              ),
            ),
            bottom: const TabBar(
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 2.5, color: Colors.blue),
                    insets: EdgeInsets.symmetric(horizontal: 15)),
                isScrollable: true,
                labelColor: Colors.blue,
                tabs: [
                  Tab(
                    child: Text('For you'),
                  ),
                  Tab(
                    child: Text('Top charts'),
                  ),
                  Tab(
                    child: Text('Kids'),
                  ),
                  Tab(
                    child: Text('Categoreis'),
                  ),
                  Tab(
                    child: Text("Editore's chose"),
                  ),
                ]),
          ),
        ),
        body: TabBarView(children: [
          Tab1(),
          Tab2(),
          Tab3(),
          Tab4(),
          Tab5(),
        ]),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (val) {
              setState(() {
                _currentIndex = val;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.gamepad), label: 'Games'),
              BottomNavigationBarItem(
                  icon: new Image.asset(
                    'assets/images/menu.png',
                    color: _currentIndex == 1 ? Colors.blue : Colors.black54,
                    width: 18,
                  ),
                  label: 'Apps')
            ]),
      ),
    );
  }
}
