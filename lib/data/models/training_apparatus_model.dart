import "package:flutter/material.dart";

class TrainingApparatusModel {
  TrainingApparatusModel({required this.title});
  final String title;
}

class TraininList extends StatefulWidget {
  const TraininList({super.key});

  @override
  State<TraininList> createState() => _TraininListState();
}

class _TraininListState extends State<TraininList> {
  List<String> letters = [
    "A1",
    "A2",
    "A3",
    "A4",
    "B1",
    "B5",
    "B6",
    "B8",
    "C1",
    "C3",
    "C5",
    "C7",
    "D5",
    "D6",
    "D7",
    "E1",
    "E2",
    "E3",
    "E4",
    "E5",
    "F1",
    "F2",
    "F3",
    "G1",
    "G3",
    "H1",
    "H2",
    "J1",
    "J2",
    "J3",
    "J4",
    "J5",
  ];
  List<String> selectedLetters = [];

  // void _onUserSelected() {
  //   setState(() {
  //     if (selectedLetters.contains()) {
  //       selectedLetters.remove();
  //     } else {
  //       selectedLetters.add();
  //     }
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
