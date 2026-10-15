import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final matches = [
      {'t1': 'Manchester City', 't2': 'Liverpool', 'score': '2 : 1', 'min': '68 min', 'live': true},
      {'t1': 'Real Madrid', 't2': 'Sevilla', 'score': '3 : 0', 'min': 'FT', 'live': false},
      {'t1': 'Bayern Munich', 't2': 'Dortmund', 'score': '1 : 1', 'min': '54 min', 'live': true},
      {'t1': 'Inter Milan', 't2': 'Juventus', 'score': 'Kickoff 21:45', 'min': 'Upcoming', 'live': false},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Matches'),
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
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Match of the Week', style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('EPL • Matchday 8', style: TextStyle(color: Colors.white70, fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ...matches.map((m) => Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(m['t1'] as String, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                        const SizedBox(height: 4),
                        Text(m['t2'] as String, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Text(m['score'] as String, style: const TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 15)),
                        Text(m['min'] as String, style: TextStyle(color: (m['live'] as bool) ? Colors.greenAccent : Colors.white54, fontSize: 10, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
