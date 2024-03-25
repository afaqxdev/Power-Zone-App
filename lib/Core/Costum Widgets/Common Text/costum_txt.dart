// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Costum_txt extends StatelessWidget {
  Costum_txt({
    required this.text,
    required this.fontcolor,
    Key? key,
  }) : super(key: key);

  final String text;
  Color fontcolor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 22.sm,
        fontWeight: FontWeight.bold,
        color: fontcolor,
      ),
    );
  }
}
