import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rashail_tech_ui/Screens/third_screen.dart';

class SixthScreen extends StatefulWidget {
  const SixthScreen({super.key});

  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  bool isSwitched = false;
  bool showPlanetary = true;
  bool notification = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            'images/background.png',
            fit: BoxFit.cover,
          )),
          Column(children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              height: 150,
              width: 420,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.5),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ThirdScreen(),
                                    ));
                              },
                              icon: const Icon(Icons.arrow_back)),
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        const Text(
                          'My Profile',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(32)),
                height: 120,
                width: 420,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/profile.jpg'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Govind Gurjar',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Space adventurer',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit_outlined,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(32)),
                height: 450,
                width: 420,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        CupertinoSwitch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              print(isSwitched);
                            });
                          },
                          activeColor: Colors.cyan,
                        ),
                        const Text(
                          'Show planetary progress',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 220,
                    width: 220,
                    child: Stack(
                      children: [
                        const Positioned.fill(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Personal\nprogress',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                              ),
                              Text(
                                '87.1%',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 65),
                              ),
                            ],
                          ),
                        ),
                        Positioned.fill(
                          child: CircularProgressIndicator(
                            strokeWidth: 18,
                            backgroundColor: Colors.grey.shade800,
                            color: Colors.cyan,
                            value: 0.87,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // CircleAvatar(
                  //   backgroundColor: Colors.cyan,
                  //   radius: 100,
                  //   child: CircleAvatar(
                  //     backgroundColor: Colors.black.withOpacity(0.5),
                  //     radius: 85,
                  //     child: const Column(
                  //       children: [
                  //         SizedBox(height: 20),
                  // Text(
                  //   'Personal\nprogress',
                  //   style: TextStyle(
                  //       color: Colors.white,
                  // fontWeight: FontWeight.bold,
                  // fontSize: 18),
                  // ),
                  //         SizedBox(height: 20),
                  //         Text(
                  //           '87.1%',
                  //           style: TextStyle(
                  //               color: Colors.cyan,
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 40),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Checkbox(
                        value: showPlanetary,
                        onChanged: (value) {
                          setState(() {
                            showPlanetary = value!;
                          });
                        },
                      ),
                      const Text(
                        'Show me in Planet Rating',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: notification,
                        onChanged: (value) {
                          setState(() {
                            notification = value!;
                          });
                        },
                      ),
                      const Text(
                        'Notifications',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ]),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
