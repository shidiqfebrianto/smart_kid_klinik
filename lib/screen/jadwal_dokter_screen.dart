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
        body: Column(
          children: [
            const HeaderWidget(),
            const Text(
              'Jadwal Dokter',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 24,
              ),
            ),
            space(height: 50.h),
            const Text(
              'Selasa dan Kamis',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                sesiWidget('Sesi 1', '08.00 - 12.00'),
                sesiWidget('Sesi 2', '13.00 - 15.00'),
              ],
            ),
            space(height: 50.h),
            const Text(
              'Sabtu',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
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
