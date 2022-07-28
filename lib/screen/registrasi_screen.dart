import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/hex_color.dart';
import '../helpers/space.dart';
import 'login_screen.dart';

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
                // menampilkan teks
                Text(
                  'Register Pasien',
                  style: TextStyle(
                    color: HexColor.fromHex('#022DA1'),
                    fontWeight: FontWeight.w800,
                    fontSize: 32,
                  ),
                ),
                // memberi jarak
                space(height: 70.h),
                // untuk membuat input nama peserta
                TextField(
                  controller: usernameTEC,
                  decoration: const InputDecoration(
                    label: Text('Nama Peserta'),
                  ),
                ),
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
                  obscureText: true,
                ),
                // untuk membuat input phone
                TextField(
                  controller: usernameTEC,
                  decoration: const InputDecoration(
                    label: Text('Phone'),
                  ),
                ),
                // untuk membuat input umur
                TextField(
                  controller: usernameTEC,
                  decoration: const InputDecoration(
                    label: Text('Umur'),
                  ),
                ),
                // untuk membuat input jenis kelamin
                TextField(
                  controller: usernameTEC,
                  decoration: const InputDecoration(
                    label: Text('Jenis Kelamin'),
                  ),
                ),
                // untuk membuat input keluhan
                TextField(
                  controller: usernameTEC,
                  decoration: const InputDecoration(
                    label: Text('Keluhan'),
                  ),
                ),
                // memberikan jarak
                space(height: 56),
                // membuat tombol
                GestureDetector(
                  // ketika di tap akan menuju halaman login
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  ),
                  child: Container(
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
