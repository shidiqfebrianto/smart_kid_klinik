import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helpers/hex_color.dart';

class HeaderTopRight extends StatelessWidget {
  const HeaderTopRight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          // topLeft: Radius.circular(-63),
          bottomLeft: Radius.circular(150.r),
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
    );
  }
}
