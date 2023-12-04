import 'package:flutter/material.dart';
import 'package:Flutter_Workshop_2/texte.dart';

class Template extends StatelessWidget {
  const Template(
      {required this.message,
      required this.action_box,
      required this.personnelized_bouton,
      this.ctx,
      super.key});
  final String message;
  final Widget action_box;
  final Widget personnelized_bouton;
  final BuildContext? ctx;
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.circle),
            color: const Color.fromARGB(255, 9, 108, 188),
            iconSize: 50,
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(ctx!);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: const Color.fromARGB(255, 9, 108, 188),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Texte(message),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 5,
                      child: Container(
                          decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(60.0),
                      )),
                    ),
                  ],
                ),
                const SizedBox(height: 150),
                action_box,
                const SizedBox(height: 100),
                personnelized_bouton,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
