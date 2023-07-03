import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class FifthScreen extends StatefulWidget {
  const FifthScreen({super.key});

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
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
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
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
                            backgroundColor: Colors.grey.shade600,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.menu),
                              color: Colors.white,
                            ),
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Favourites',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                              )
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade600,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.person_2_outlined),
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
                margin: const EdgeInsets.only(top: 14),
                child: const Column(
                  children: [
                    FavCard(
                      description:
                          'Create an account or log into Facebook. Connect with friends, family and other people you know. Share photos and videos, send messages and get updates.',
                      imageUrl: '',
                      title: 'Venus',
                    ),
                    FavCard(
                      description:
                          'Create an account or log into Facebook. Connect with friends, family and other people you know. Share photos and videos, send messages and get updates.',
                      imageUrl: '',
                      title: 'Sun',
                    ),
                    FavCard(
                      description:
                          'Create an account or log into Facebook. Connect with friends, family and other people you know. Share photos and videos, send messages and get updates.',
                      imageUrl: '',
                      title: 'Jupiter',
                    ),
                  ],
                ),
              )
              // FavCard(),
            ],
          ),
        ],
      ),
    );
  }
}

class FavCard extends StatelessWidget {
  const FavCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
  final String title;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(28),
      ),
      // height: 220,
      // width: 420,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(radius: 35),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              color: Colors.lightBlue.shade300,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_outline_outlined,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      description,
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Text(
                      'Details',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
