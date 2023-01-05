import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Jours aléatoires",
        debugShowCheckedModeBanner: false,
        home: JoursAleatoires());
  }
}

class JoursAleatoires extends StatefulWidget {
  const JoursAleatoires({super.key});

  @override
  State<JoursAleatoires> createState() => _JoursAleatoiresState();
}

class _JoursAleatoiresState extends State<JoursAleatoires> {
  List<String> joursdelaSemaine = [
    "Lundi",
    "Mardi",
    "Mercredi",
    "Jeudi",
    "Vendredi",
    "Samedi",
    "Dimanche"
  ];

  int indexJourActuel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Application jours aléatoires"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Cliquez pour voir un nouveau jour",
              style: TextStyle(fontSize: 25, color: Colors.red),
            ),
            Text(
              joursdelaSemaine[indexJourActuel],
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.green[800],
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  indexJourActuel = Random().nextInt(7);
                });
              },
              child: const Text("Generer un jour"),
            )
          ],
        ),
      ),
    );
  }
}
