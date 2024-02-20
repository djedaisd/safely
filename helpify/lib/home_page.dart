// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:helpify/util/emotions.dart';
import 'package:helpify/util/exercise.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      //     BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
      //   ],
      // ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          child: GNav(
              backgroundColor: Colors.white,
              color: Colors.black,
              activeColor: Colors.black,
              tabBackgroundColor: Colors.grey,
              gap: 8,
              padding: EdgeInsets.all(16),
              onTabChange: (index) {
                print(index);
              },
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'home',
                ),
                GButton(
                  icon: Icons.newspaper,
                  text: 'news',
                ),
                GButton(
                  icon: Icons.chat,
                  text: 'chat',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'profile',
                ),
              ]),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //greetings
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Text(
                              'Hi djedai',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '16 February , 2024 ',
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  //search bar

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  //how do you feel

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),
                  // emotions
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //BAD
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: "🙁"),
                          SizedBox(height: 8),
                          Text(
                            'Bad',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),

                      //FINE
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: "🙂"),
                          SizedBox(height: 8),
                          Text(
                            'Fine',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      //WELL
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: "😃"),
                          SizedBox(height: 8),
                          Text(
                            'Well',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      //EXCELLENT
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: "😄"),
                          SizedBox(height: 8),
                          Text(
                            'Excellent',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Execises',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //list of exercises'
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTitle(
                              icon: Icons.favorite,
                              numberOfExercices: 16,
                              exerciseName: 'Speaking Skills',
                              color: Colors.red,
                            ),
                            ExerciseTitle(
                              icon: Icons.man,
                              numberOfExercices: 12,
                              exerciseName: 'Understanding Self-Confidence',
                              color: Colors.deepPurple,
                            ),
                            ExerciseTitle(
                              icon: Icons.emoji_emotions_rounded,
                              numberOfExercices: 16,
                              exerciseName: 'Labeling Your Emotions',
                              color: Colors.orange,
                            ),
                            ExerciseTitle(
                              icon: Icons.work,
                              numberOfExercices: 15,
                              exerciseName:
                                  'Depressive Thought Worksheet for Teens',
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
