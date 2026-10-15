import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final news = [
      {'title': 'Champions League playoff seeding pots announced', 'time': '1 hour ago'},
      {'title': 'Star midfielder extends contract through 2030', 'time': '2 hours ago'},
      {'title': 'Manager press conference ahead of local derby', 'time': '4 hours ago'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • News'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Breaking Football News', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ...news.map((n) => Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(n['title']!, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14, height: 1.3)),
                  const SizedBox(height: 8),
                  Text(n['time']!, style: const TextStyle(color: Colors.white54, fontSize: 11)),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
