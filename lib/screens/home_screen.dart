import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/screens/create_notes.dart';
import 'package:notes/widgets/note_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //one way
  // List<NoteModel> notes = [];
  List<NoteModel> notes = List.empty(growable: true);

  void onNewNoteCreate(NoteModel note) {
    notes.add(note);
    setState(() {});
  }

  void onNoteDeleted(int index) {
    notes.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter-Notes"), centerTitle: true),

      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return NoteCard(
            note: notes[index],
            index: index,
            onNoteDelete: onNoteDeleted,
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  CreateNotes(onNewNoteCreate: onNewNoteCreate),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
