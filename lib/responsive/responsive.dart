import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_flutter/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenSizeLayout, mobileScreenLayout;
  const ResponsiveLayout(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webScreenSizeLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth > webScreenSize) return webScreenSizeLayout;
      return mobileScreenLayout;
    }));
  }
}
