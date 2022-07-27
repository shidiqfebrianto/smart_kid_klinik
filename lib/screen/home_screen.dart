import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/hex_color.dart';
import '../helpers/space.dart';
import 'data_pasien_baru_screen.dart';
import 'jadwal_dokter_screen.dart';
import 'widgets/header_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const HeaderWidget(),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DataPasienBaruScreen()),
                ),
                child: Container(
                  height: 103.h,
                  width: 103.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(103.h),
                    color: HexColor.fromHex('#FF7128'),
                  ),
                  child: Icon(
                    Icons.library_books_outlined,
                    size: 100.h,
                  ),
                ),
              ),
              const Text('Data Pasien Baru'),
              space(height: 20.h),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const JadwalDokterScreen()),
                ),
                child: Container(
                  height: 103.h,
                  width: 103.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(103.h),
                    color: HexColor.fromHex('#FF7128'),
                  ),
                  child: Icon(
                    Icons.list,
                    size: 100.h,
                  ),
                ),
              ),
              const Text('Jadwal Dokter'),
              space(height: 20.h),
              Container(
                height: 103.h,
                width: 103.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(103.h),
                  color: HexColor.fromHex('#FF7128'),
                ),
                child: Icon(
                  Icons.add_circle_outline,
                  size: 100.h,
                ),
              ),
              const Text(
                'Update Jadwal\nKonsultasi Ke Pasien',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
