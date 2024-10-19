import 'package:flutter/material.dart';

class StickyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Color(0xFFFFFFFF),
      child: const Row(
        children: [
          Icon(
            Icons.chevron_left_outlined,
            color: Colors.black,
            size: 30,
          ),
          const SizedBox(width: 5),
          Text(
            "Sarah",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 22,
                fontFamily:
                    'Poppins'), 
          ),
        ],
      ),
    );
  }
}
