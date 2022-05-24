import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'feed_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _pages = [
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black12,

        centerTitle: true,
        title: Text(
          "Instagram",
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.camera,
            color: Colors.white70,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.tv,
              color: Colors.white70,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesome.send_o,
              color: Colors.white70,
            ),
          ),
        ],
      ),

      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i){
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black12,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Foundation.home,color: Colors.grey,),
              label: "Feed"
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.search,color: Colors.grey,),
              label: "Search"
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.plus_square,color: Colors.grey,),
              label: "Upload"
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.heart,color: Colors.grey,),
              label: "Likes"
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.user,color: Colors.grey,),
              label: "Account"
          ),
        ],
      ),
    );
  }
}
