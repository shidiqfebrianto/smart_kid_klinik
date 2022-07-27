import 'package:flutter/material.dart';

import '../../constant/image_constant.dart';
import '../../helpers/ui_helpers.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageConstant.logo,
      width: screenWidth(context) / 2,
    );
  }
}
