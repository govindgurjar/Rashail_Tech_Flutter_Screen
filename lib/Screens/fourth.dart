import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:rashail_tech_ui/Screens/fifth_screen.dart';
import 'package:rashail_tech_ui/Screens/third_screen.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
            child: Image.asset(
          'images/space.png',
          fit: BoxFit.cover,
        )),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22))),
              height: 130,
              width: 420,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.2),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const FifthScreen(),
                                  ));
                            },
                            icon: const Icon(Icons.arrow_back),
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.black.withOpacity(0.2),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border_outlined),
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 560.5,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.only(top: 82.5 + 12),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(22)),
                      height: 475,
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Earth',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(height: 30),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Icon(FontAwesomeIcons.weightHanging,
                                      color: Colors.white),
                                  Text('Mass',
                                      style: TextStyle(color: Colors.white70)),
                                  Text('5.97',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 26))
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(FontAwesomeIcons.magnet,
                                      color: Colors.white),
                                  Text('Gravity',
                                      style: TextStyle(color: Colors.white70)),
                                  Text('9.8',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 26))
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(FontAwesomeIcons.solidSun,
                                      color: Colors.white),
                                  Text('Day',
                                      style: TextStyle(color: Colors.white70)),
                                  Text('24',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 26))
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //   children: [
                          //     Icon(FontAwesomeIcons.weightHanging,
                          //         color: Colors.white),
                          //     Icon(FontAwesomeIcons.magnet, color: Colors.white),
                          //     Icon(FontAwesomeIcons.solidSun, color: Colors.white)
                          //   ],
                          // ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //   children: [
                          //     Text('Mass', style: TextStyle(color: Colors.white)),
                          //     Text('Gravity', style: TextStyle(color: Colors.white)),
                          //     Text('Day', style: TextStyle(color: Colors.white))
                          //   ],
                          // ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //   children: [
                          //     Text('5.97',
                          //         style: TextStyle(
                          //             color: Colors.white,
                          //             fontSize: 26,
                          //             fontWeight: FontWeight.bold)),
                          //     Text('9.8',
                          //         style: TextStyle(
                          //             color: Colors.white,
                          //             fontSize: 26,
                          //             fontWeight: FontWeight.bold)),
                          //     Text('24',
                          //         style: TextStyle(
                          //             color: Colors.white,
                          //             fontSize: 26,
                          //             fontWeight: FontWeight.bold))
                          //   ],
                          // ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Icon(FontAwesomeIcons.rocket,
                                      color: Colors.white),
                                  Text('Esc. Velocity',
                                      style: TextStyle(color: Colors.white70)),
                                  Text('11.2',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 26))
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(FontAwesomeIcons.temperatureLow,
                                      color: Colors.white),
                                  Text('Mean Temp.',
                                      style: TextStyle(color: Colors.white70)),
                                  Text('15',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 26))
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.scale, color: Colors.white),
                                  Text('Distance ',
                                      style: TextStyle(color: Colors.white70)),
                                  Text('5.97',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 26))
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Colors.purple,
                                      Colors.cyan,
                                    ],
                                  ),
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(35),
                                ),
                                height: 48,
                                width: 140,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ThirdScreen(),
                                        ));
                                  },
                                  child: const Text(
                                    'Visit',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: MediaQuery.of(context).size.width / 2 - 82.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/earthpic.png',
                        height: 165,
                        width: 165,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
