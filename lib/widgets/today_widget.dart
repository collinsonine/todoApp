import 'package:flutter/material.dart';

Widget week(String pagenumber) {
  return Container(
    clipBehavior: Clip.none,
    child: Center(
      child: Text(
        pagenumber,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
