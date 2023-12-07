import 'package:flutter/material.dart';

class Notify extends StatefulWidget {
  final String noteID;

  Notify({super.key, requiredthis.noteID});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Create a note'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10), hintText: "Note title"),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Note content"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Submit'))
            ],
          ),
        ));
  }
}
