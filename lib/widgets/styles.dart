import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_utils/color/colors.dart';

const dropdownFontSizeDefault = 15.0;
const fontSizeDefault = 14.0;
const fontSizeSmall = 14.0;
const fontSizeScreenTitle = 20.0;
const fontSizeLeadingIcon = 16.0;
const leadingWidth = 40.0;
const lineHeight = 1.5;
const iconSizeDefault = 24.0;

abstract class ThemeText {
  static TextStyle bodySmall = TextStyle(
    color: cTextPrimary,
    fontSize: 14.sp,
  );
  static TextStyle bodySmallSecondary = TextStyle(
    color: cTextSecondary,
    fontSize: 14.sp,
  );
  static TextStyle bodyTinySecondary = TextStyle(
    color: cTextSecondary,
    fontSize: 12.sp,
  );
  static TextStyle body = TextStyle(
    color: cTextPrimary,
    fontSize: fontSizeDefault,
  );
  static TextStyle primary = TextStyle(
    color: cPrimary,
    fontSize: fontSizeDefault,
  );
  static TextStyle secondary = TextStyle(
    color: cTextSecondary,
    fontSize: fontSizeDefault.sp,
  );
  static TextStyle warning = TextStyle(
    color: cTextWarning,
    fontSize: fontSizeDefault.sp,
  );
  static TextStyle white = TextStyle(
    color: Colors.white,
    fontSize: fontSizeDefault.sp,
  );
  static TextStyle mute = TextStyle(
    color: cDark80,
    fontSize: 14.sp,
  );
  static TextStyle h1 = TextStyle(
    color: cTextPrimary,
    fontSize: 27,
    fontWeight: FontWeight.w700,
  );
  static TextStyle h2 = TextStyle(
    color: cTextPrimary,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );
  static TextStyle h3 = TextStyle(
    color: cTextPrimary,
    fontSize: 21,
    fontWeight: FontWeight.w700,
  );
  static TextStyle h4Slim = TextStyle(
    color: cTextPrimary,
    fontSize: 18,
  );
  static TextStyle h4 = TextStyle(
    color: cTextPrimary,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );
  static TextStyle h1Black = TextStyle(
    color: HexColor('363636'),
    fontSize: 27.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle h2Black = TextStyle(
    color: HexColor('363636'),
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle labelStyle = TextStyle(
    color: cTextPrimary.withOpacity(0.5),
    fontSize: 12,
  );

  static TextStyle dialogHeaderStyle = ThemeText.textStyle23Weight600;
  static TextStyle dialogBodyStyle = ThemeText.textStyle17Weight400;
  static TextStyle textNormal = ThemeText.textStyle14Weight400;

  static TextStyle textStyle10Weight400 = TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, color: cTextBlack);
  static TextStyle textStyle12Weight400 = TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: cTextBlack);
  static TextStyle textStyle13Weight400 = TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400, color: cTextBlack);
  static TextStyle textStyle14Weight400 = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, color: cTextBlack);
  static TextStyle textStyle15Weight400 = TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400, color: cTextBlack);
  static TextStyle textStyle16Weight400 = TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400, color: cTextBlack);
  static TextStyle textStyle17Weight400 = TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400, color: cTextBlack);
  static TextStyle textStyle18Weight400 = TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400, color: cTextBlack);

  static TextStyle textStyle11Weight500 = TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500, color: cTextBlack);
  static TextStyle textStyle12Weight500 = TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500, color: cTextBlack);
  static TextStyle textStyle13Weight500 = TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500, color: cTextBlack);
  static TextStyle textStyle14Weight500 = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: cTextBlack);
  static TextStyle textStyle15Weight500 = TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: cTextBlack);
  static TextStyle textStyle16Weight500 = TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: cTextBlack);
  static TextStyle textStyle18Weight500 = TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500, color: cTextBlack);
  static TextStyle textStyle20Weight500 = TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500, color: cTextBlack);

  static TextStyle textStyle8Weight600 = TextStyle(fontSize: 8.sp, fontWeight: FontWeight.w600, color: cTextBlack);
  static TextStyle textStyle9Weight600 = TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600, color: cTextBlack);
  static TextStyle textStyle10Weight600 = TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600, color: cTextBlack);
  static TextStyle textStyle12Weight600 = TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600, color: cTextBlack);
  static TextStyle textStyle13Weight600 = TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600, color: cTextBlack);
  static TextStyle textStyle14Weight600 = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: cTextBlack);
  static TextStyle textStyle15Weight600 = TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600, color: cTextBlack);
  static TextStyle textStyle16Weight600 = TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, color: cTextBlack);
  static TextStyle textStyle17Weight600 = TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600, color: cTextBlack);
  static TextStyle textStyle18Weight600 = TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, color: cTextBlack);
  static TextStyle textStyle20Weight600 = TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600, color: cTextBlack);
  static TextStyle textStyle23Weight600 = TextStyle(fontSize: 23.sp, fontWeight: FontWeight.w600, color: cTextBlack);
  static TextStyle textStyle24Weight600 = TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600, color: cTextBlack);
  static TextStyle textStyle25Weight600 = TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w600, color: cTextBlack);

  static TextStyle textStyle12Weight700 = TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: cTextBlack);
  static TextStyle textStyle14Weight700 = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: cTextBlack);
  static TextStyle textStyle15Weight700 = TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700, color: cTextBlack);
  static TextStyle textStyle17Weight700 = TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w700, color: cTextBlack);
  static TextStyle textStyle18Weight700 = TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700, color: cTextBlack);
  static TextStyle textStyle20Weight700 = TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700, color: cTextBlack);
  static TextStyle textStyle24Weight700 = TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700, color: cTextBlack);

  static TextStyle textStyle12Weight800 = TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w800, color: cTextBlack);
  static TextStyle textStyle14Weight800 = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w800, color: cTextBlack);
  static TextStyle textStyle16Weight800 = TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w800, color: cTextBlack);
  static TextStyle textStyle18Weight800 = TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w800, color: cTextBlack);
  static TextStyle textStyle20Weight800 = TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w800, color: cTextBlack);
  static TextStyle textStyle22Weight800 = TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w800, color: cTextBlack);
  static TextStyle textStyle24Weight800 = TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w800, color: cTextBlack);
  static TextStyle textStyle25Weight800 = TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w800, color: cTextBlack);
  static TextStyle textStyle28Weight800 = TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w800, color: cTextBlack);
  static TextStyle textStyle32Weight800 = TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w800, color: cTextBlack);
  static TextStyle textStyle36Weight800 = TextStyle(fontSize: 36.sp, fontWeight: FontWeight.w800, color: cTextBlack);
  static TextStyle textStyle40Weight800 = TextStyle(fontSize: 40.sp, fontWeight: FontWeight.w800, color: cTextBlack);

  static TextStyle textStyle17Weight900 = TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w900, color: cTextBlack);
  static TextStyle textStyle28Weight900 = TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w900, color: cTextBlack);
  static TextStyle textStyle38Weight900 = TextStyle(fontSize: 38.sp, fontWeight: FontWeight.w900, color: cTextBlack);
  static TextStyle textStyle48Weight900 = TextStyle(fontSize: 48.sp, fontWeight: FontWeight.w900, color: cTextBlack);
  static TextStyle textStyle40Weight900 = TextStyle(fontSize: 40.sp, fontWeight: FontWeight.w900, color: cTextBlack);

  static TextStyle textNote = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: cTextPrimary,
    fontStyle: FontStyle.italic,
  );
}
