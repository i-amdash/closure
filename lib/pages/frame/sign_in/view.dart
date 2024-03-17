import 'package:closure/common/values/colors.dart';
import 'package:closure/pages/frame/sign_in/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  Widget _buildLogo() {
    return Container(
      margin: EdgeInsets.only(top: 100.h, bottom: 80.h),
      child: Text(
        "Closure ...",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontWeight: FontWeight.bold,
          fontSize: 34.sp
        ),
      )

    );
  }
  
  Widget _buildThirdPartyLogin(String loginType, String logo) {
    return GestureDetector(
      onTap: () {
        controller.handleSignIn("google");
      },
      child: Container(
        padding: EdgeInsets.all(10.h),
        margin: EdgeInsets.only(bottom: 15.h),
        width: 295.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: AppColors.primaryBackground,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
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
          mainAxisAlignment: logo == '' ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            logo == '' ?
                Container()
            :
            Container(
              padding: EdgeInsets.only(left: 40.w, right: 30.w),
              child: Image.asset("assets/icons/$logo.png"),
            ),
            Text(
              "Sign In With $loginType",
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.sp
              ),
            )
          ],
        ),
      ),
    );
  }
  
  
  Widget _buildOrWidget() {
    return  Container(
      margin: EdgeInsets.only(top: 20.h, bottom: 30.h),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              indent: 50,
              height: 2.h,
              color: AppColors.primarySecondaryElementText,
            ),
          ),
          const Text(" or "),
          Expanded(
            child: Divider(
              endIndent: 50,
              height: 2.h,
              color: AppColors.primarySecondaryElementText,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpWidget() {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            print('clicking on sign up');
          },
          child: Text("Already have an account?",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.primaryText,
                fontWeight: FontWeight.bold,
                fontSize: 12.sp
            ),),
        ),
        GestureDetector(
          onTap: () {},
          child: Text("Sign up here",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.primaryElement,
                fontWeight: FontWeight.bold,
                fontSize: 12.sp
            ),),
        )
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarySecondaryBackground,
      body: Center(
        child: Column(
          children: [
            _buildLogo(),
            _buildThirdPartyLogin("google", "google"),
            _buildThirdPartyLogin("apple", "apple"),
            _buildThirdPartyLogin("facebook", "facebook"),
            _buildOrWidget(),
            _buildThirdPartyLogin("phone", ""),
            SizedBox(
              height: 30.h,
            ),
            _buildSignUpWidget()
           
          ],
        ),
      ),
    );
  }
}
