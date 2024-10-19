import 'package:get/get.dart';
import '../models/profile_model.dart';

class ProfileController extends GetxController {
  var profile = ProfileModel(
    name: "Sarah Douglas",
    location: "Location, Location",
    description:
        "I'm Sarah, a 32-year-old fitness instructor and mom of a lively 7-year-old son named Ethan. We love running, swimming, and going on family hikes. I’m passionate about youth sports and healthy living, and I think we could have some great discussions about keeping our...",
    mutualFriends: 10,
    age: 25,
    gender: "Female",
    kids: "2 Kids",
    typeofparent: "Engaged & Active",
    we: "Fitness Trainer",
    ed: "B.Sc in Kinesiology",
  ).obs;
}
