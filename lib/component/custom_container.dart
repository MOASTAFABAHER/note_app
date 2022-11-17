import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/classes/note.dart';
import 'package:note_app/component/custom_text.dart';

class CustomContainer extends StatelessWidget {
  final Note note;
  CustomContainer({required this.note});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.green,
      ),
      child: CustomText(
        data: '${note.msg}',
        fontSize: 18.sp,
        color: Colors.white,
      ),
    );
  }
}
