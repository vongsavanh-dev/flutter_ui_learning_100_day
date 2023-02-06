import 'package:app_day_1/pages/page_day_1.dart';
import 'package:app_day_1/util/emoticon_face.dart';
import 'package:app_day_1/util/exercises_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hi KAJUDAM !',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "4 Jan, 2023",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(50)),
                      padding: const EdgeInsets.all(10),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                //search bar
                const SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.all(14),
                  child: Row(children: const [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ]),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "How do you feel ?",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Icon(Icons.more_horiz, color: Colors.white)
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        EmoticonFace(
                          emoticonFace: "😘",
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Text",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        EmoticonFace(
                          emoticonFace: "😍",
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Text",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        EmoticonFace(
                          emoticonFace: "⛔",
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Text",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        EmoticonFace(
                          emoticonFace: "📌",
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Text",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Container(
                color: Colors.grey[100],
                padding: const EdgeInsets.all(18),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Excercises",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      const SizedBox(height: 10),
                      //card
                      Expanded(
                        child: ListView(
                          children: [
                            InkWell(
                              onTap: dayOneRoute,
                              child: const ExercisesCard(
                                icon: Icons.favorite,
                                mainTitleCard: "Day1",
                                numberOfExercises: 5,
                              ),
                            ),
                            const ExercisesCard(
                              icon: Icons.alarm,
                              mainTitleCard: "Day2",
                              numberOfExercises: 5,
                            ),
                            const ExercisesCard(
                              icon: Icons.home,
                              mainTitleCard: "Speaking Skills",
                              numberOfExercises: 5,
                            ),
                            const ExercisesCard(
                              icon: Icons.blinds_closed,
                              mainTitleCard: "Speaking Skills",
                              numberOfExercises: 5,
                            ),
                            const ExercisesCard(
                              icon: Icons.cabin,
                              mainTitleCard: "Speaking Skills",
                              numberOfExercises: 5,
                            ),
                            const ExercisesCard(
                              icon: Icons.favorite,
                              mainTitleCard: "Speaking Skills",
                              numberOfExercises: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  dayOneRoute() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const PageDayOne();
        },
      ),
    );
  }
}
