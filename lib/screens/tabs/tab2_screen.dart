import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final table = [
      {'pos': '1', 'team': 'Manchester City', 'p': '8', 'pts': '22'},
      {'pos': '2', 'team': 'Arsenal', 'p': '8', 'pts': '20'},
      {'pos': '3', 'team': 'Liverpool', 'p': '8', 'pts': '18'},
      {'pos': '4', 'team': 'Aston Villa', 'p': '8', 'pts': '17'},
      {'pos': '5', 'team': 'Chelsea', 'p': '8', 'pts': '15'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Standings'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.3)),
              ),
              child: const Text('Premier League Standings', style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            const SizedBox(height: 16),
            ...table.map((t) => Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Text(t['pos']!, style: const TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 16),
                  Expanded(child: Text(t['team']!, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14))),
                  Text('${t["pts"]} pts', style: const TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold, fontSize: 13)),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
