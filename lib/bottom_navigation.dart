import 'package:flutter/material.dart';
import 'package:messenger_app/features/chats/new_chats.dart';
import 'package:messenger_app/features/home/home_page.dart';

import 'features/home/widgets/pop_up.dart';
import 'features/profile/profile_page.dart';




class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() =>
      _BottomNavigationState();
}

class _BottomNavigationState
    extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    NewChats(),
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
        // elevation: 0.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
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
               // offset: Offset(0.5, 0.5),
               position: PopupMenuPosition.under,
               elevation: 16,
               constraints: BoxConstraints(
                 minHeight: 200,
                 minWidth: 250
               ),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20.0)
               ),
               icon:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.add,
                        color: Colors.white,
                          size: 18,),
                         Text('New Chat',style: TextStyle(
                              color: Colors.white,
                            ),),
                      ],
               ),
               itemBuilder: (ctx)=>[

                 buildPopUp('Add', Icons.add),
                 buildPopUp('Add', Icons.add),
                 buildPopUp('Add', Icons.add),

               ],
             ),
           ),
            label: '',
          ),
          BottomNavigationBarItem(
            
            icon: Icon(Icons.person_outline_rounded),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
  PopupMenuItem buildPopUp(String title, IconData icon){
  return PopupMenuItem(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon),
          SizedBox(
            width: 10,
          ),
          Text(title)
        ],
      ));
  }
}
