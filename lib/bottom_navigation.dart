import 'package:flutter/material.dart';
import 'package:messenger_app/features/chats/new_chats.dart';
import 'package:messenger_app/features/home/home_page.dart';
import 'features/profile/profile_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const NewChats(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 35,
              width: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.black,
              ),
              child: PopupMenuButton(
                offset: const Offset(-65, -240),
                position: PopupMenuPosition.under,
                elevation: 16,
                constraints:
                    const BoxConstraints(minHeight: 200, minWidth: 250),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                icon: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18,
                    ),
                    Text(
                      'New Chat',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                itemBuilder: (ctx) => [
                  buildPopUp('Home', Icons.home),
                  buildPopUp('Profile', Icons.person),
                  // buildPopUp('Add', Icons.add),
                ],
              ),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded), label: ''),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  PopupMenuItem buildPopUp(String title, IconData icon) {
    return PopupMenuItem(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon),
        const SizedBox(
          width: 10,
        ),
        Text(title)
      ],
    ));
  }
}
