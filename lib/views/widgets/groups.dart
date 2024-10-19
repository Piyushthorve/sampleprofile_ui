import 'package:flutter/material.dart';

class GroupsRow extends StatelessWidget {
  final List<List<Color>> avatarGradients = [
    [
      const Color.fromARGB(255, 247, 197, 130),
      const Color.fromARGB(255, 243, 220, 193)
    ],
    [Colors.blue, const Color.fromARGB(255, 159, 217, 250)],
    [Colors.green, const Color.fromARGB(255, 166, 240, 144)],
    [
      const Color.fromARGB(255, 252, 127, 169),
      const Color.fromARGB(255, 249, 168, 226)
    ],
    [
      const Color.fromARGB(255, 118, 62, 61),
      const Color.fromARGB(255, 200, 170, 170)
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Common Groups',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(avatarGradients.length, (index) {
              return _buildCircleAvatar(
                gradientColors: avatarGradients[index],
                text: 'Group',
              );
            }),
          ),
        ),
      ],
    );
  }

  Widget _buildCircleAvatar(
      {required List<Color> gradientColors, required String text}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: gradientColors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(text),
        ],
      ),
    );
  }
}
