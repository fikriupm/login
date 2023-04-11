import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/src/constants/colors.dart';
import 'package:login/src/constants/image_strings.dart';
import 'package:login/src/constants/text_strings.dart';
import 'package:login/src/features/core/screens/profile/profile_screen.dart';

class DashboardAppBar extends StatelessWidget  implements PreferredSizeWidget{
  const DashboardAppBar({
    super.key, 
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu, color: Colors.black),
      title: Text(tAppName, style: Theme.of(context).textTheme.headline4),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: isDark ? tSecondaryColor : tCardBgColor),
          child: IconButton(onPressed: (){
            // AuthenticationRepository.instance.logout();
            Get.to(() => const ProfileScreen());
          }, 
          icon: const Image(image: AssetImage((tUserProfileImage)))),

        )
      ],
      );
  }
  
  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
} 