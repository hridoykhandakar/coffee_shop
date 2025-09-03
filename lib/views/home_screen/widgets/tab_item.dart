import 'package:flutter/material.dart';

Widget buildTab(String text) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 8), // gap between tabs
    child: Tab(text: text),
  );
}
