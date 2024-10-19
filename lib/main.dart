import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_ui/controllers/profile_controller.dart';
import 'package:profile_ui/views/profile_page.dart';  

void main() {
  Get.put(ProfileController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
      ),
      home: ProfilePage(),  
    );
  }
}
