import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:note_app/classes/note.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  static NoteCubit get(context) => BlocProvider.of(context);
  List<Note> notes = [];
 
  TextEditingController msgTextController = TextEditingController();
  addNote() {
    notes.add(Note(msg: msgTextController.text));
    emit(AddNoteState());
  }
 
}
