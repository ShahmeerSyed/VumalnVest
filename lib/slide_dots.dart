import 'package:flutter/material.dart';
class slidedots extends StatelessWidget {
  bool isActive;
  slidedots(this.isActive);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3),
      height: isActive ? 12:8,
      width: isActive ? 12:8,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
