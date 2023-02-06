import 'package:flutter/material.dart';

class ExercisesCard extends StatelessWidget {
  final icon;
  final String mainTitleCard;
  final int numberOfExercises;

  const ExercisesCard({
    Key? key,
    required this.icon,
    required this.mainTitleCard,
    required this.numberOfExercises,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red[300],
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(22),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title
                    Text(
                      mainTitleCard,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${numberOfExercises}  Exercises',
                      style: const TextStyle(fontSize: 16),
                    ),
                    //subtitle
                  ],
                ),
              ],
            ),
            const Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
