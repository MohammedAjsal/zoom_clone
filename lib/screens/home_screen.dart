import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';
import 'package:zoom_clone/widgets/home_meeting_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int value) {
    setState(() {
      _page = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text("Meet & Chat"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeMeetingButton(
                onpressed: () {},
                icon: Icons.videocam,
                text: "New Meeting",
              ),
              HomeMeetingButton(
                onpressed: () {},
                icon: Icons.add_box_outlined,
                text: "Join Meeting",
              ),
              HomeMeetingButton(
                onpressed: () {},
                icon: Icons.calendar_today,
                text: "Schedule",
              ),
              HomeMeetingButton(
                onpressed: () {},
                icon: Icons.arrow_upward_rounded,
                text: "Search",
              ),
            ],
          ),
          const Expanded(
              child: Center(
            child: Text(
              "Create or join meeting with just a click",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ))
        ],
      ),
      // backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        onTap: onPageChanged,
        currentIndex: _page,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: "Meet & chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock),
            label: "Meetings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Contacts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            backgroundColor: footerColor,
            label: "Chat",
          ),
        ],
      ),
    );
  }
}
