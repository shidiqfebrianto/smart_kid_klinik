import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/hex_color.dart';
import '../helpers/space.dart';
import 'widgets/header_widget.dart';

class DataPasienBaruScreen extends StatefulWidget {
  const DataPasienBaruScreen({Key? key}) : super(key: key);

  @override
  State<DataPasienBaruScreen> createState() => _DataPasienBaruScreenState();
}

class _DataPasienBaruScreenState extends State<DataPasienBaruScreen> {
  List<String> listPasienBaru = ["Nathan", "Aurora", "Clara", "Alvaro"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // untuk menampilkan header halaman
            const HeaderWidget(),
            Expanded(
              // membuat grid
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(listPasienBaru.length, (index) {
                  // membuat list widget secara vertical atau kebawah
                  return Column(
                    children: [
                      Container(
                          height: 103.h,
                          width: 103.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(103.h),
                            color: HexColor.fromHex('#FF7128'),
                          ),
                          child: Center(
                              child: Text(
                            '${listPasienBaru[index][0]}${listPasienBaru[index][1]}'
                                .toUpperCase(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 40,
                            ),
                          ))),
                      Text(
                        listPasienBaru[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
            GestureDetector(
              // onTap: () => Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const RegisterScreen()),
              // ),
              child: Container(
                width: 286.w,
                height: 54.h,
                decoration: BoxDecoration(
                    color: HexColor.fromHex('#022DA1'),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Text(
                    'Buat Jadwal Konsultasi',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
            space(height: 20.h),
          ],
        ),
      ),
    );
  }
}
