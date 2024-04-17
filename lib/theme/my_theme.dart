import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class my_theme{
  static Color whitecolor=Color(0xffFFFFFF);
  static Color blackcolor=Color(0xff1A1A1A);
  static Color filmCardColor=Color(0xff343534);
  static Color yellowcolor=Color(0xffFFB224);
  static Color graycolor=Color(0xff282A28);
  static Color lightGraycolor=Color(0xff707070);
  static Color lightGray=Color(0xff514F4F);
  static Color textColor=Color(0xffCBCBCB);
  static Color iconColor=Color(0xffC6C6C6);

  static ThemeData mode=ThemeData(
      textTheme: TextTheme(
        titleLarge: GoogleFonts.inter(
          textStyle: TextStyle(color:whitecolor,fontSize: 22,fontWeight: FontWeight.w400),
        ),
        titleMedium : GoogleFonts.inter(
          textStyle: TextStyle(color: whitecolor,fontWeight: FontWeight.w400,fontSize: 18),
        ),
        titleSmall: GoogleFonts.inter(
          textStyle: TextStyle(color: whitecolor,fontWeight: FontWeight.w400,fontSize: 15 ),
        ),
        bodyLarge:GoogleFonts.inter(
          textStyle: TextStyle(color: whitecolor,fontWeight: FontWeight.w600,fontSize: 14),
        ),
        bodyMedium: GoogleFonts.inter(
          textStyle:TextStyle(color: whitecolor,fontWeight: FontWeight.w400,fontSize: 13),
        ),
        bodySmall: GoogleFonts.poppins(
          textStyle:TextStyle(color:whitecolor,fontWeight: FontWeight.w400,fontSize: 10),
        )
      ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: Colors.transparent
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(
        size: 30,
        color: yellowcolor
      ),
      unselectedIconTheme: IconThemeData(
        size: 25,
        color: whitecolor
      ),
      selectedLabelStyle: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 10,
          fontWeight:FontWeight.w400,
        ),
      ),
      unselectedLabelStyle:GoogleFonts.inter(
        textStyle: TextStyle(
          fontSize: 10,
          fontWeight:FontWeight.w400,
        ),
      ),
      showUnselectedLabels: true,
    )
  );
}