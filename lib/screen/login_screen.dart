import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_kid_klinik/screen/home_screen.dart';

import '../constant/image_constant.dart';
import '../helpers/hex_color.dart';
import '../helpers/space.dart';
import '../helpers/ui_helpers.dart';
import 'registrasi_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameTEC = TextEditingController();
  final passwordTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                space(height: 100.h),
                Image.asset(
                  ImageConstant.logo,
                  width: screenWidth(context) / 2,
                ),
                space(height: 70.h),
                TextField(
                  controller: usernameTEC,
                  decoration: const InputDecoration(
                    label: Text('Username'),
                  ),
                ),
                TextField(
                  controller: passwordTEC,
                  decoration: const InputDecoration(
                    label: Text('Password'),
                  ),
                  obscureText: true,
                ),
                space(height: 56),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  ),
                  child: Container(
                    width: 286.w,
                    height: 54.h,
                    decoration: BoxDecoration(
                        color: HexColor.fromHex('#022DA1'),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                space(height: 56),
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()),
                  ),
                  child: const Text(
                    'Dont have an account? Register',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
