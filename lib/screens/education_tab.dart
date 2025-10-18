import 'package:flutter/material.dart';

class EducationTab extends StatelessWidget {
  const EducationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildEducationItem(
          degree: 'Bachelor of Computer Science',
          institution: 'Tech University',
          period: '2018 - 2022',
          description: 'Specialized in Mobile Application Development and Software Engineering. Graduated with First Class Honors.',
        ),
        const SizedBox(height: 16),
        _buildEducationItem(
          degree: 'Flutter Development Certification',
          institution: 'Google Developer Training',
          period: '2022',
          description: 'Completed advanced Flutter development course covering state management, APIs, and advanced UI concepts.',
        ),
        const SizedBox(height: 16),
        _buildEducationItem(
          degree: 'High School Diploma',
          institution: 'City High School',
          period: '2016 - 2018',
          description: 'Focus on Science and Mathematics. Participated in coding competitions and tech clubs.',
        ),
      ],
    );
  }

  Widget _buildEducationItem({
    required String degree,
    required String institution,
    required String period,
    required String description,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    degree,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    period,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              institution,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}