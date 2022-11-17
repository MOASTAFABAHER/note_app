import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/component/custom_container.dart';
import 'package:note_app/cubit/cubit/note_cubit.dart';
import 'package:note_app/screens/home_screen.dart';
import 'package:note_app/utils/app_navigator.dart';

class NoteScreen extends StatelessWidget {
  NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.indigo[300],
        body: BlocConsumer<NoteCubit, NoteState>(
            listener: (context, state) {},
            builder: (context, state) {
              var cubit = NoteCubit.get(context);
              return SafeArea(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Column(children: [
                    Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (contex, index) {
                          return CustomContainer(note: cubit.notes[index]);
                        },
                        itemCount: cubit.notes.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(height: 15.h);
                        },
                      ),
                    )
                  ]),
                ),
              ));
            }));
  }
}
