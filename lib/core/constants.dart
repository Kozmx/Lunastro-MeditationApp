import 'package:flutter/material.dart';
class projectColor {
  static Color PeriwinkleBlue = Color(0xff8e97fd);
  static Color Black =  Color(0xFF0E0D0D);
  static Color GreatFalls = Color(0xffA1A4B2);
  static Color CloudBreak = Color(0xffF6F1FB);
  static Color BleanchedAlmond = Color(0xffFFECCC);
  static Color Intellectual = Color(0xff3F414E);
  static Color CreamyApricot = Color(0xffFFE7BF);
  static Color KantorBlue = Color(0xff03174D);
  static Color ColdMorning = Color(0xffE5E5E5);
}
// 
class projectPadding {
  static const EdgeInsets symmetricPaddingH = EdgeInsets.symmetric(horizontal: 20, vertical: 0);
  static const EdgeInsets symmetricPaddingV = EdgeInsets.symmetric(horizontal: 0, vertical: 10);
  static const EdgeInsets symmetricText = EdgeInsets.symmetric(horizontal: 15,vertical: 0);
  static const EdgeInsets topPadding = EdgeInsets.only(top: 80);
  static const EdgeInsets bottomPadding = EdgeInsets.only(bottom:15 );
  static const EdgeInsets symmetricListtile = EdgeInsets.symmetric(horizontal: 15,vertical: 5);
  
}


extension ProjectTextStyles on BuildContext {
  // Title Large Styles
  TextStyle get blackTitleLarge => Theme.of(this).textTheme.titleLarge!.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: projectColor.Black
  );
  TextStyle get coldMorningTitleLarge => Theme.of(this).textTheme.titleLarge!.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: projectColor.ColdMorning
  );
  TextStyle get greatFallsTitleLarge => Theme.of(this).textTheme.titleLarge!.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: projectColor.GreatFalls
  );
  TextStyle get bleachedAlmondTitleLarge => Theme.of(this).textTheme.titleLarge!.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: projectColor.BleanchedAlmond
  );

  // Title Medium Styles
  TextStyle get blackTitleMedium => Theme.of(this).textTheme.titleMedium!.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: projectColor.Black
  );
  TextStyle get coldMorningTitleMedium => Theme.of(this).textTheme.titleMedium!.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: projectColor.ColdMorning
  );
  TextStyle get bleachedAlmondTitleMedium => Theme.of(this).textTheme.titleMedium!.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: projectColor.BleanchedAlmond
  );

  // Title Small Styles
  TextStyle get blackTitleSmall => Theme.of(this).textTheme.titleSmall!.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: projectColor.Black
  );
  TextStyle get coldMorningTitleSmall => Theme.of(this).textTheme.titleSmall!.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: projectColor.ColdMorning
  );
  TextStyle get greatFallsTitleSmall => Theme.of(this).textTheme.titleSmall!.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: projectColor.GreatFalls
  );

  // Body Large Styles
  TextStyle get blackBodyLarge => Theme.of(this).textTheme.bodyLarge!.copyWith(
    fontSize: 16,
    color: projectColor.Black
  );
  TextStyle get coldMorningBodyLarge => Theme.of(this).textTheme.bodyLarge!.copyWith(
    fontSize: 16,
    color: projectColor.ColdMorning
  );
  TextStyle get bleachedAlmondBodyLarge => Theme.of(this).textTheme.bodyLarge!.copyWith(
    fontSize: 16,
    color: projectColor.BleanchedAlmond
  );

  // Body Medium Styles
  TextStyle get blackBodyMedium => Theme.of(this).textTheme.bodyMedium!.copyWith(
    fontSize: 14,
    color: projectColor.Black
  );
  TextStyle get coldMorningBodyMedium => Theme.of(this).textTheme.bodyMedium!.copyWith(
    fontSize: 14,
    color: projectColor.ColdMorning
  );
  TextStyle get greatFallsBodyMedium => Theme.of(this).textTheme.bodyMedium!.copyWith(
    fontSize: 14,
    color: projectColor.GreatFalls
  );

  // Body Small Styles
  TextStyle get blackBodySmall => Theme.of(this).textTheme.bodySmall!.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w300,
    color: projectColor.Black
  );
  TextStyle get coldMorningBodySmall => Theme.of(this).textTheme.bodySmall!.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w300,
    color: projectColor.ColdMorning
  );
  TextStyle get bleachedAlmondBodySmall => Theme.of(this).textTheme.bodySmall!.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w300,
    color: projectColor.BleanchedAlmond
  );
}