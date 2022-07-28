import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/space.dart';
import 'widgets/header_widget.dart';
import 'widgets/sesi_widget.dart';

class JadwalDokterScreen extends StatefulWidget {
  const JadwalDokterScreen({Key? key}) : super(key: key);

  @override
  State<JadwalDokterScreen> createState() => _JadwalDokterScreenState();
}

class _JadwalDokterScreenState extends State<JadwalDokterScreen> {
  List<String> listPasienBaru = ["Nathan", "Aurora", "Clara", "Alvaro"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // membuat list widget dengan column
        body: Column(
          children: [
            // untuk menampilkan header halaman
            const HeaderWidget(),
            // menampilkan teks
            const Text(
              'Jadwal Dokter',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 24,
              ),
            ),
            // memberikan jarak
            space(height: 50.h),
            // memberikan teks
            const Text(
              'Selasa dan Kamis',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            // membuat list widget secara horizontal atau kesamping
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                sesiWidget('Sesi 1', '08.00 - 12.00'),
                sesiWidget('Sesi 2', '13.00 - 15.00'),
              ],
            ),
            // memberikan jarak
            space(height: 50.h),
            // menampilkan teks
            const Text(
              'Sabtu',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            // membuat list widget secara horizontal atau kesamping
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                sesiWidget('Sesi 1', '08.00 - 12.00'),
                sesiWidget('Sesi 2', '13.00 - 15.00'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
