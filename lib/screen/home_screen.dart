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
          // membuat list widget secara vertical atau kebawah
          body: Column(
            children: [
              // untuk menampilkan header halaman
              const HeaderWidget(),
              // membuat tobol
              GestureDetector(
                // apabila di tap akan menuju halaman data pasien baru
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
                  // menampilkan icon
                  child: Icon(
                    Icons.library_books_outlined,
                    size: 100.h,
                  ),
                ),
              ),
              // menampilkan teks
              const Text('Data Pasien Baru'),
              // memberikan jarak
              space(height: 20.h),
              // membuat tombol
              GestureDetector(
                // apabila di tap akan menuju halaman jadwal dokter
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
              // menampilkan teks
              const Text('Jadwal Dokter'),
              // memberikan jarak
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
