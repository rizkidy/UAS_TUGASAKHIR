import 'package:corona/Page/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Page/newsPage.dart';
import 'sidebar.dart';

class menu extends StatefulWidget {
  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
  int selectedNavbar = 0;

  List layoutPage = [
    homePage(),
    newsPage(),
    Text('Kosong'),
    Text('Kosong')
  ];

  @override
  void _changeSelectedNavBar(int index) {
    setState(() {
      selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 40,
              width: 40,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.1jqvOVebJjz3W5LEcfLoEwBkBM?w=100&h=76&c=7&r=0&o=5&dpr=1.25&pid=1.7"),
              ),
              title: Text(
                "Muhammad Galang",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text('Status Aktif'),
              contentPadding: EdgeInsets.only(left: 30, bottom: 10, top: 10),
            ),
            ListTile(
              leading: SvgPicture.asset("assets/icons/hospital 1.svg"),
              title: Text("Quarantine Centers"),
              contentPadding: EdgeInsets.only(top: 50, bottom: 20, left: 10),
              onTap: () {},
            ),
            ListTile(
              leading: SvgPicture.asset("assets/icons/medicine 1.svg"),
              title: Text("Medicine"),
              contentPadding: EdgeInsets.all(10),
              onTap: () {},
            ),
            ListTile(
              leading: SvgPicture.asset("assets/icons/wong.svg"),
              title: Text("Symptoms"),
              contentPadding: EdgeInsets.all(10),
              onTap: () {},
            ),
            ListTile(
              leading: SvgPicture.asset("assets/icons/barang.svg"),
              title: Text("volunteer"),
              contentPadding: EdgeInsets.all(10),
              onTap: () {},
            ),
            ListTile(
              leading: SvgPicture.asset("assets/icons/customer.svg"),
              title: Text("Live Support"),
              contentPadding: EdgeInsets.only(top: 10, bottom: 100, left: 10),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting      |        Log Out"),
              contentPadding: EdgeInsets.all(10),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: layoutPage[selectedNavbar],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF50D890),
        type: BottomNavigationBarType.fixed,
        onTap: _changeSelectedNavBar,
        currentIndex: selectedNavbar,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home.svg'),
            // ),
            title: Text(
              'HOME',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/news.svg'),
            title: Text(
              'NEWS',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/Group.png'),
            title: Text(
              'GROUP',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/user.svg'),
            title: Text(
              'USER',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
            ),
          ),
        ],
      ),
    );
  }
}
