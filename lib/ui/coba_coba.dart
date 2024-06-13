import 'package:flutter/material.dart';

class CobaCoba extends StatefulWidget {
  @override
  _CobaCobaState createState() => _CobaCobaState();
}

class _CobaCobaState extends State<CobaCoba> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pilihan Menu',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                _buildMenuButton(0, 'Makanan'),
                const SizedBox(width: 10),
                _buildMenuButton(1, 'Minuman'),
                const SizedBox(width: 10),
                _buildMenuButton(2, 'Cemilan'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(int index, String title) {
    bool isSelected = _selectedIndex == index;
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.teal : Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey,
            // fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
