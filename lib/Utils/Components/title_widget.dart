import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({required this.title,super.key});

  @override
  Widget build(BuildContext context) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      title,
      style: GoogleFonts.oswald(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
      ),
      textAlign: TextAlign.left,
    ),
  );
  }
}