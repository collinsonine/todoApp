import 'package:flutter/material.dart';

Widget week(String pagenumber) {
  return Container(
    clipBehavior: Clip.none,
    child: Center(
      child: Text(pagenumber),
    ),
  );
}
