import 'package:flutter/material.dart';

class Menu extends StatelessWidget {

  final ValueChanged<int> onMenuClick;

  const Menu({required this.onMenuClick, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        color: Colors.blueAccent,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () => onMenuClick(1),
              child: const Text(
                'Seção 1',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () => onMenuClick(2),
              child: const Text(
                'Seção 2',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            TextButton(
              onPressed: () => onMenuClick(3),
              child: const Text(
                'Seção 3',
                style: TextStyle(
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
