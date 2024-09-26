import 'package:english_lerning_app/presentaton/utility/asset_path.dart';
import 'package:english_lerning_app/presentaton/utility/colors.dart';
import 'package:english_lerning_app/presentaton/views/Home_screen.dart';
import 'package:english_lerning_app/presentaton/views/exam_screen.dart';
import 'package:english_lerning_app/presentaton/views/video_screen.dart';
import 'package:english_lerning_app/presentaton/widgets/appBar.dart';
import 'package:flutter/material.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _currentSelectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const ExamScreen(),
    const VideoScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Fokrul Islam"),
              accountEmail: Text("fokrul1256@gmail,com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  AssetsPath.underDevelopmentImage,
                ),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person),
              onTap: () {},
            ),
            ListTile(
              title: Text('leaderBord'),
              leading: Icon(Icons.leaderboard),
              onTap: () {},
            ),
            ListTile(
              title: Text('Notificaiton'),
              leading: Badge(
                label: Text('1'),
                child: const Icon(
                  Icons.notifications,
                  size: 25,
                  color: Color(0xfffbc107),
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text('bookmark'),
              leading: Icon(Icons.bookmark),
              onTap: () {},
            ),
            ListTile(
              title: Text('Shere'),
              leading: Icon(Icons.share),
              onTap: () {},
            ),
            ListTile(
              title: Text('Privacy and Policiy'),
              leading: Icon(Icons.privacy_tip_outlined),
              onTap: () {},
            ),
            ListTile(
              title: Text('More App'),
              leading: Icon(Icons.app_registration),
              onTap: () {},
            ),
            ListTile(
              title: Text('Rete Us'),
              leading: Icon(Icons.star_rate),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: profileAppBar,
      body: _screens[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: CustomColor.primaryColor,
        currentIndex: _currentSelectedIndex,
        onTap: (index) {
          _currentSelectedIndex = index;
          if (mounted) {
            setState(() {});
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Spoken',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_sharp),
            label: 'Govt Exam',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video),
            label: 'Video',
          ),
        ],
      ),
    );
  }
}
