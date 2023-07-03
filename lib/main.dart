import 'package:flutter/material.dart';
import 'package:rashail_tech_ui/Screens/fifth_screen.dart';
import 'package:rashail_tech_ui/Screens/fourth.dart';
import 'package:rashail_tech_ui/Screens/second_screen.dart';
import 'package:rashail_tech_ui/Screens/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rashail Tech',
      home: SecondScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  final screens = [
    const ThirdScreen(),
    const FifthScreen(),
    const FourthScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black.withOpacity(0.5),
        elevation: 0,
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: currentPage == 0
                ? const Icon(
                    Icons.home,
                    color: Colors.black,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: currentPage == 1
                ? const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  ),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: currentPage == 2
                ? const Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.black,
                  )
                : const Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.white,
                  ),
            label: 'More',
          ),
        ],
      ),
    );
  }
}



























// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ThirdScreen(),
//     );
//   }
// }
