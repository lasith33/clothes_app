import 'package:clothes_app/users/userPreferences/current_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProfileFragmentScreen extends StatelessWidget
{

  final CurrentUser _currentUser =Get.put(CurrentUser());

  Widget userInfoItemProfile(IconData iconData,String userData)
  {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 30,
            color: Colors.black,
          ),
          const SizedBox(width: 16,),
          Text(
            userData,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  ListView(
      padding: const EdgeInsets.all(32),
      children: [

        Center(
          child: Image.asset(
            "images/man.jpg",
            width: 240,
            height: 200,

          ),
        ),

        const SizedBox(height: 20,),

        userInfoItemProfile(Icons.person, _currentUser.user.user_name),

        const SizedBox(height: 20,),

        userInfoItemProfile(Icons.email, _currentUser.user.user_email),

        const SizedBox(height: 20,),

        Center(
          child: Material(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              onTap: ()
              {
                
              },
              borderRadius: BorderRadius.circular(32),
              child: const Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 12,
                ),
                child: const Text(
                  "Sing Out",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}