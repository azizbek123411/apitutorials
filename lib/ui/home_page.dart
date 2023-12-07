import 'package:apitutorials/models/note_for_listing.dart';
import 'package:apitutorials/ui/note_modify.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final notes = [
    NoteForListing(
      noteID: '1',
      noteTitle: 'Note 1',
      createdTime: DateTime.now(),
      lastUpdatedTime: DateTime.now(),
    ),
    NoteForListing(
      noteID: '2',
      noteTitle: 'Note 2',
      createdTime: DateTime.now(),
      lastUpdatedTime: DateTime.now(),
    ),
    NoteForListing(
      noteID: '3',
      noteTitle: 'Note 3',
      createdTime: DateTime.now(),
      lastUpdatedTime: DateTime.now(),
    ),
    NoteForListing(
      noteID: '4',
      noteTitle: 'Note 4',
      createdTime: DateTime.now(),
      lastUpdatedTime: DateTime.now(),
    ),
  ];

  String dateTimeFormat(DateTime dateTime) {
    return "${dateTime.day}/${dateTime.month}/${dateTime.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note List'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Notify(),),);
            },
            leading: Text(notes[index].noteID),
            title: Text(
              notes[index].noteTitle,
              style: const TextStyle(color: Colors.blue, fontSize: 22),
            ),
            subtitle: Text(
                "last edited ${dateTimeFormat(notes[index].createdTime)}"),
          );
        },
        separatorBuilder: (context, ss) =>
        const Divider(
          height: 1,
          color: Colors.black,
        ),
        itemCount: notes.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Notify(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
