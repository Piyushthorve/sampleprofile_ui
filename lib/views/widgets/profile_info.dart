import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/profile_controller.dart';

class ProfileInfo extends StatelessWidget {
  final ProfileController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/0d35272d3418aee23b79a17b9ec2f983.jpeg"),
            ),
            Positioned(
              top: 5, 
              right: 0,
              child: Container(
                width: 25, 
                height: 25,
                decoration: BoxDecoration(
                  color: Color(0xFF16B425), 
                  shape: BoxShape.circle,
                  
                ),
                // Small white circle inside green
                child: Center(
                  child: Container(
                    width: 12, // Adjust the inner white circle size
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.white, 
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => Text(
                  controller.profile.value.name,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'),
              )
            ),
            const SizedBox(height: 5,),
            Text(
              "85% match",
              style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 2,),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: const Color(0xFF444444),
                  size: 16, 
                ),
                Obx(() => Text(controller.profile.value.location)),
              ],
            )
            
          ],
        ),
      ],
    );
  }
}
