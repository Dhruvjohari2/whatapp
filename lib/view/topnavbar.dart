import 'package:flutter/material.dart';
import 'package:whatapp_clone/utils/colors.dart';

class TopNavbar extends StatefulWidget {
  const TopNavbar({Key? key}) : super(key: key);

  @override
  State<TopNavbar> createState() => _TopNavbarState();
}

class _TopNavbarState extends State<TopNavbar> {
  int _selectedIndex = 0;

  _navigateUser(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // final List<Widget> _pages = [
  //   const Chat(),
  //   const Status(),
  //   const Calling(),
  // ];

  final List<String> _pageName = [
    "Search Bus",
    "Bookings",
    "Support",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: textColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Whatsapp"),
                SizedBox(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.search),
                      const Icon(Icons.camera_alt),
                      Image.asset("assets/icons/three_dot.png",width: 20,height: 20,),
                    ],
                  ),
                ),
              ],
            ),
            bottom: TabBar(
              tabs: [
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Text('Chat'),
                    SizedBox(
                      width: 10,
                    ),
                    Tab(icon: Icon(Icons.message))
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Text('Status'),
                    SizedBox(
                      width: 10,
                    ),
                    Tab(icon: Icon(Icons.mode_comment))
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Text('Call'),
                    SizedBox(
                      width: 10,
                    ),
                    Tab(icon: Icon(Icons.call))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
