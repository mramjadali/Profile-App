import 'package:flutter/material.dart';

class SkillsTab extends StatelessWidget {
  const SkillsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildSkillCategory(
          title: 'Technical Skills',
          skills: {
            'Flutter/Dart': 0.9,
            'Firebase': 0.8,
            'REST APIs': 0.85,
            'Git & GitHub': 0.8,
            'Python': 0.7,
            'JavaScript': 0.6,
          },
        ),
        const SizedBox(height: 20),
        _buildSkillCategory(
          title: 'Soft Skills',
          skills: {
            'Problem Solving': 0.9,
            'Team Collaboration': 0.85,
            'Communication': 0.8,
            'Project Management': 0.75,
            'Creativity': 0.8,
          },
        ),
        const SizedBox(height: 20),
        _buildLanguages(),
      ],
    );
  }

  Widget _buildSkillCategory({required String title, required Map<String, double> skills}) {
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
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 16),
            ...skills.entries.map((skill) => _buildSkillItem(skill.key, skill.value)),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillItem(String skill, double level) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                skill,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '${(level * 100).toInt()}%',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          LinearProgressIndicator(
            value: level,
            backgroundColor: Colors.grey.shade300,
            color: Colors.blue,
            borderRadius: BorderRadius.circular(4),
          ),
        ],
      ),
    );
  }

  Widget _buildLanguages() {
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
            const Text(
              'Languages',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 16),
            _buildLanguageItem('English', 'Fluent'),
            _buildLanguageItem('Spanish', 'Intermediate'),
            _buildLanguageItem('French', 'Basic'),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageItem(String language, String level) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            language,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: _getLevelColor(level),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              level,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getLevelColor(String level) {
    switch (level.toLowerCase()) {
      case 'fluent':
        return Colors.green;
      case 'intermediate':
        return Colors.orange;
      case 'basic':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }
}