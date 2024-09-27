import 'package:english_lerning_app/presentaton/utility/asset_path.dart';
import 'package:english_lerning_app/presentaton/utility/colors.dart';
import 'package:english_lerning_app/presentaton/views/Home_screen.dart';
import 'package:english_lerning_app/presentaton/views/exam_screen.dart';
import 'package:english_lerning_app/presentaton/views/video_screen.dart';
import 'package:english_lerning_app/presentaton/widgets/app_bar.dart';
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
            const UserAccountsDrawerHeader(
              accountName: Text("Fokrul Islam"),
              accountEmail: Text("fokrul1256@gmail,com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  AssetsPath.underDevelopmentImage,
                ),
              ),
            ),
            ListTile(
              title: const Text('Profile'),
              leading: const Icon(Icons.person),
              onTap: () {},
            ),
            ListTile(
              title: const Text('leaderBord'),
              leading: const Icon(Icons.leaderboard),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Notificaiton'),
              leading: const Badge(
                label: Text('1'),
                child: Icon(
                  Icons.notifications,
                  size: 25,
                  color: Color(0xfffbc107),
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text('bookmark'),
              leading: const Icon(Icons.bookmark),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Shere'),
              leading: const Icon(Icons.share),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Privacy and Policiy'),
              leading: const Icon(Icons.privacy_tip_outlined),
              onTap: () {},
            ),
            ListTile(
              title: const Text('More App'),
              leading: const Icon(Icons.app_registration),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Rete Us'),
              leading: const Icon(Icons.star_rate),
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
