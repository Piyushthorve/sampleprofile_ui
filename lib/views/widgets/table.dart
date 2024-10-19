import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/profile_controller.dart';

class FieldTable extends StatelessWidget {
  final ProfileController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildRow(
          context,
          'Age',
          'assets/images/age.png',
          Obx(() => Text(controller.profile.value.age.toString(), style: TextStyle(fontSize: 15),)),
        ),
        _buildRow(
          context,
          'Gender',
          'assets/images/gender.png',
          Obx(() => Text(controller.profile.value.gender, style: TextStyle(fontSize: 15),)),
        ),
        _buildRow(
          context,
          'Kids',
          'assets/images/kid.png',
          Obx(() => Text(controller.profile.value.kids, style: TextStyle(fontSize: 15),)),
        ),
        _buildRow(
          context,
          'Type of Parent',
          'assets/images/parent.png',
          Obx(() => Text(controller.profile.value.typeofparent, style: TextStyle(fontSize: 15),)),
        ),
        _buildRow(
          context,
          'Work Experience',
          'assets/images/work.png',
          Obx(() => Text(controller.profile.value.we, style: TextStyle(fontSize: 15),)),
        ),
        _buildRow(
          context,
          'Education',
          'assets/images/ed.png',
          Obx(() => Text(controller.profile.value.ed, style: TextStyle(fontSize: 15),)),
        ),
      ],
    );
  }

  Widget _buildRow(BuildContext context, String attribute, String imagePath, Widget value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
          Row(
            children: [
              Image.asset(
                imagePath,
                width: 25, 
                height: 25,
              ),
              SizedBox(width: 10),
              Text(attribute, style: TextStyle(fontSize: 15)),
            ],
          ),
          value, 
        ],
      ),
    );
  }
}
