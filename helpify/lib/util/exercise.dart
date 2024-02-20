// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExerciseTitle extends StatelessWidget {
  const ExerciseTitle(
      {super.key,
      required this.icon,
      required this.exerciseName,
      required this.numberOfExercices,
      required this.color});

  final icon;
  final String exerciseName;
  final int numberOfExercices;
  final color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
                padding: EdgeInsets.all(16),
                color: color,
                child: Icon(
                  icon,
                  color: Colors.white,
                )),
          ),
          title: Text(
            exerciseName,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            numberOfExercices.toString() + ' ' + 'Exercises',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
