import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/hex_color.dart';
import '../helpers/space.dart';
import 'home_screen.dart';
import 'registrasi_screen.dart';
import 'widgets/header_logo.dart';

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
          // membuat layar bisa di scroll
          child: SingleChildScrollView(
            // membuat list widget dengan column
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // memberi jarak
                space(height: 100.h),
                // untuk menampilkan logo header halaman
                const HeaderLogo(),
                // memberi jarak
                space(height: 70.h),
                // untuk membuat input username
                TextField(
                  controller: usernameTEC,
                  decoration: const InputDecoration(
                    label: Text('Username'),
                  ),
                ),
                // untuk membuat input password
                TextField(
                  controller: passwordTEC,
                  decoration: const InputDecoration(
                    label: Text('Password'),
                  ),
                  // supaya inputan tidak bisa dilihat
                  obscureText: true,
                ),
                // memberikan jarak
                space(height: 56),
                // membuat tombol Login
                GestureDetector(
                  // apabila di tap. akan menuju HomeScreen
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
                // memberikan jarak
                space(height: 56),
                // membuat tombol
                GestureDetector(
                  // ketika di tap akan menuju halaman registrasi
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
