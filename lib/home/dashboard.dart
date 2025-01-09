import 'package:flutter/material.dart';
import 'package:template_project/widgets/category_chip.dart';
import 'package:template_project/widgets/course_item.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'SELAMAT DATANG SERENA',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banner Section
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 16),

              // "Keep Moving Up" Section
              const Text(
                "Keep Moving Up",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "selamat datang di ujian praktikum mobile",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 16),

              // Categories Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("See All"),
                  ),
                ],
              ),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: const [
                  CategoryChip(label: "Development"),
                  CategoryChip(label: "IT & Software"),
                  CategoryChip(label: "UI/UX Design"),
                  CategoryChip(label: "Business"),
                  CategoryChip(label: "Finance & Business"),
                  CategoryChip(label: "Perks"),
                ],
              ),
              const SizedBox(height: 16),

              // Top Courses Section
              const Text(
                "Top Courses",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // Replace with actual data count
                  itemBuilder: (context, index) {
                    return const CourseItem();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
