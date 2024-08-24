import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  const Responsive({
    super.key,
    this.mobile,
    this.tablet,
    this.desktop,
  });

  // screen sizes
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000 &&
      MediaQuery.of(context).size.width >= 600;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1000;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= 1000) {
          return desktop ?? tablet ?? mobile ?? const SizedBox.shrink();
        } else if (constraints.maxWidth >= 600) {
          return tablet ?? desktop ?? mobile ?? const SizedBox.shrink();
        } else {
          return mobile ?? tablet ?? desktop ?? const SizedBox.shrink();
        }
      },
    );
  }
}
