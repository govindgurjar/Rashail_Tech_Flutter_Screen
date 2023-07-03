import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:rashail_tech_ui/main.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
            child: Image.asset(
          'images/space.png',
          fit: BoxFit.cover,
        )),
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(22),
                        bottomRight: Radius.circular(22))),
                height: 170,
                width: 420,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Rashail Tech',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(22)),
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Sign in',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Enter your email here",
                              hintStyle: const TextStyle(color: Colors.grey),
                              fillColor: Colors.black.withOpacity(0.5),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30)),
                              // border: OutlineInputBorder(
                              //   // borderSide: BorderSide.none,
                              //   borderRadius: BorderRadius.circular(90),
                              // ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Password",
                              labelStyle: const TextStyle(color: Colors.white),
                              hintStyle: const TextStyle(color: Colors.grey),
                              fillColor: Colors.black.withOpacity(0.5),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30)),
                              // border: OutlineInputBorder(
                              //   // borderSide: BorderSide.none,
                              //   borderRadius: BorderRadius.circular(90),
                              // ),
                            ),
                          ),
                          // SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forget Password?',
                                  style: TextStyle(
                                      color: Colors.cyan, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
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
                                borderRadius: BorderRadius.circular(35)),
                            height: 45,
                            width: 240,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomeScreen(),
                                    ));
                              },
                              child: const Text(
                                'Sign in',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'or sign in using',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          FontAwesomeIcons.twitter))),
                              CircleAvatar(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          FontAwesomeIcons.facebook))),
                              CircleAvatar(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon:
                                          const Icon(FontAwesomeIcons.google))),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't have an account?",
                                style: TextStyle(color: Colors.grey),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        color: Colors.cyan,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
