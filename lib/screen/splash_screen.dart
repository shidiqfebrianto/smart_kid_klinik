import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_screen.dart';
import 'widgets/header_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // setelah 2 detik
    Future.delayed(const Duration(seconds: 2), () {
      // pindah ke halaman login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          // membuat list dengan column
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // menampilkan logo
            const HeaderLogo(),
            // menampilkan animasi loading
            Column(
              children: const [
                CircularProgressIndicator(),
              ],
            ),
            // space(height: 40.h),
            // Text(
            //   'SmartKid',
            //   style: Theme.of(context)
            //       .textTheme
            //       .bodyLarge!
            //       .copyWith(fontWeight: FontWeight.bold),
            //   textAlign: TextAlign.center,
            // ),
            // space(height: 40.h),
            // Text(
            //   'versi 1.0.0',
            //   style: Theme.of(context).textTheme.bodyLarge!,
            //   textAlign: TextAlign.center,
            // ),
          ],
        ),
      ),
    );
  }
}
