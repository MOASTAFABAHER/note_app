import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/component/custom_text_field.dart';

import 'package:note_app/cubit/cubit/note_cubit.dart';
import 'package:note_app/screens/note_screen.dart';
import 'package:note_app/utils/app_navigator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[300],
      body: SafeArea(
          child: 
          
           BlocConsumer<NoteCubit, NoteState>(
            listener: (context, state) {},
            builder: (context, state) {
              var cubitNote = NoteCubit.get(context);

              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(
                      controller: cubitNote.msgTextController,
                      hint: 'Please Enter your Note',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          cubitNote.addNote();
                        
                          AppNavigator.appNavigator(context, NoteScreen());
                        },
                        child: Text('submit'))
                  ],
                ),
                     );
            },
          )));
        }
    
  }

