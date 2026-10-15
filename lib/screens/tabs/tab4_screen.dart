import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Favorites'),
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
              child: const Text('Favorite Clubs & Alerts', style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            const SizedBox(height: 16),
            _buildFav('Manchester City', 'England', Icons.sports_soccer),
            _buildFav('Real Madrid', 'Spain', Icons.sports_soccer),
            _buildFav('Bayern Munich', 'Germany', Icons.sports_soccer),
          ],
        ),
      ),
    );
  }

  Widget _buildFav(String name, String country, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          CircleAvatar(backgroundColor: AppTheme.primaryColor.withValues(alpha: 0.2), child: Icon(icon, color: AppTheme.primaryColor)),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                Text(country, style: const TextStyle(color: Colors.white60, fontSize: 12)),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.amber),
        ],
      ),
    );
  }
}
