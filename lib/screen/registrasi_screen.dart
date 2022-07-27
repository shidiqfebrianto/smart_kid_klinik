import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/hex_color.dart';
import '../helpers/space.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final usernameTEC = TextEditingController();
  final passwordTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Register Pasien',
                  style: TextStyle(
                    color: HexColor.fromHex('#022DA1'),
                    fontWeight: FontWeight.w800,
                    fontSize: 32,
                  ),
                ),
                space(height: 70.h),
                TextField(
                  controller: usernameTEC,
                  decoration: const InputDecoration(
                    label: Text('Nama Peserta'),
                  ),
                ),
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
                TextField(
                  controller: usernameTEC,
                  decoration: const InputDecoration(
                    label: Text('Phone'),
                  ),
                ),
                space(height: 56),
                Container(
                  width: 286.w,
                  height: 54.h,
                  decoration: BoxDecoration(
                      color: HexColor.fromHex('#022DA1'),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      'CREATE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                space(height: 56),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
