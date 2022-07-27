import 'package:flutter/material.dart';

import 'header_logo.dart';
import 'header_top_right.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [HeaderLogo(), HeaderTopRight()],
    );
  }
}
