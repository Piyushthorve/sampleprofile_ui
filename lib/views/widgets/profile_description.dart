import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/profile_controller.dart';

class ProfileDescription extends StatelessWidget {
  final ProfileController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => RichText(
            text: TextSpan(
              text: controller.profile.value.description,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                color: Colors.black,
              ),
              children: [
                WidgetSpan(
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        ' Read More',
                        style: TextStyle(
                          color: Color.fromARGB(255, 153, 153, 153),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 15),
        const Row(
          children: [
            SizedBox(
              width: 40,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xFF6C6C6C),
                  ),
                  Positioned(
                    left: 8,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xFFD7546A),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    child: CircleAvatar(
                        radius: 10,
                        backgroundImage:
                            AssetImage("assets/mutualfriend.jpeg")),
                  ),
                ],
              ),
            ),
            SizedBox(width: 15),
            Text(
              '35 mutual friends',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
