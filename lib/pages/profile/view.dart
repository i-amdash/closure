
import 'package:closure/common/values/colors.dart';
import 'package:closure/pages/profile/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

AppBar _buildAppBar() {
return  AppBar(
    title:  Text('Profile',
      style: TextStyle(
          color: AppColors.primaryText,
          fontSize: 16.sp,
          fontWeight: FontWeight.normal
      ),
    ),
  );
}

Widget _buildProfilePhoto() {
  return Stack(
    children: [
      Container(
        width: 120.w,
        height: 120.w,
        decoration: BoxDecoration(
          color: AppColors.primarySecondaryBackground,
          borderRadius: BorderRadius.all(Radius.circular(60.w)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1)
            )
          ]
        ),
        child: Image(
          width: 120.w,
          height: 120.h,
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/images/account_header.png"
          ),
        ),
      ),
      Positioned(
          bottom: 0.w,
          right: 0.w,
          child: GestureDetector(
        child: Container(
          height: 35.h,
          width: 35.w,
          decoration: BoxDecoration(
            color: AppColors.primaryElement,
            borderRadius: BorderRadius.all(Radius.circular(40.w))
          ),
          child: Image.asset("assets/icons/edit.png"),
        ),
      ))
    ],
  );
}

Widget _buildCompleteBtn(){
  return GestureDetector(
    child: Container(
      margin: EdgeInsets.only(top: 60.h, bottom: 30.h),
      width: 295.w,
      height: 44.h,
      decoration: BoxDecoration(
        color: AppColors.primaryElement,
        borderRadius: BorderRadius.all(Radius.circular(5.w)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1)
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Complete',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.primaryElementText,
                fontSize: 14.sp,
                fontWeight: FontWeight.normal
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildLogoutBtn(){
  return GestureDetector(
    child: Container(
      margin: EdgeInsets.only(top: 0.h, bottom: 30.h),
      width: 295.w,
      height: 44.h,
      decoration: BoxDecoration(
          color: AppColors.primarySecondaryElementText,
          borderRadius: BorderRadius.all(Radius.circular(5.w)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1)
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Log Out',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.primaryElementText,
                fontSize: 14.sp,
                fontWeight: FontWeight.normal
            ),
          ),
        ],
      ),
    ),
    onTap: () {
      Get.defaultDialog(
        title: "Are you sure you want to log out?",
        content: Container(),
        onConfirm: () {
          controller.goLogOut();
        },
        onCancel: (){},
        textConfirm: "Confirm",
        textCancel: "Cancel"
      );
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                child: Column(
                  children: [
                    _buildProfilePhoto(),
                    _buildCompleteBtn(),
                    _buildLogoutBtn()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
