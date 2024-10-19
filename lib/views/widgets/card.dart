import 'package:flutter/material.dart';

class LookingForCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFFFFFF),
      margin: EdgeInsets.symmetric(vertical: 20),
      shape: RoundedRectangleBorder(
        side: BorderSide(
            color: const Color.fromARGB(255, 184, 183, 183), width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Looking for", style: TextStyle(fontSize: 18)),
            Text("Sarah and you have 1 common subject interests",
                style: TextStyle(fontSize: 13)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Play dates",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    )),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Fitness Advice",
                      style: TextStyle(color: Colors.black,fontSize: 10),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 228, 230, 233),
                    )),
              ],
            ),
            SizedBox(height: 4),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Community Sports Events",
                  style: TextStyle(color: Colors.black,fontSize: 10),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 228, 230, 233),
                )),
            SizedBox(
              height: 25,
            ),
            Text("Areas", style: TextStyle(fontSize: 18)),
            Text("Sarah and you have 1 common Lifestyle interests",
                style: TextStyle(fontSize: 13)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Youth Sports",
                      style: TextStyle(color: Colors.white,fontSize: 10),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    )),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Physical Education",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    )),
              ],
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Nutrition",
                      style: TextStyle(color: Colors.black,fontSize: 10),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 228, 230, 233),
                    )),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Active Family Lifestyle",
                      style: TextStyle(color: Colors.black,fontSize: 10),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 228, 230, 233),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
