import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
