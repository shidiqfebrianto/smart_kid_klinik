import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_kid_klinik/helpers/hex_color.dart';
import 'package:smart_kid_klinik/helpers/space.dart';

import '../constant/image_constant.dart';
import '../helpers/ui_helpers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  ImageConstant.logo,
                  width: screenWidth(context) / 2,
                ),
                Container(
                  height: 150.h,
                  width: 150.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      // topLeft: Radius.circular(-63),
                      bottomLeft: Radius.circular(150.h),
                    ),
                    color: HexColor.fromHex('#FF7128'),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Admin,',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '      Lia',
                        style: TextStyle(
                          color: HexColor.fromHex('#022DA1'),
                          fontWeight: FontWeight.w800,
                          fontSize: 32,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
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
            const Text('Data Pasien Baru'),
            space(height: 20.h),
            Container(
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
    );
  }
}
