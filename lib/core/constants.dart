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
  static Color BreonneBlue = Color(0xffE6E7F3);
  static Color MidnighBlush = Color(0xff98A1BD);
}
// 
class projectPadding {
  static const EdgeInsets symmetricPaddingH = EdgeInsets.symmetric(horizontal: 20, vertical: 0);
  static const EdgeInsets symmetricPaddingV = EdgeInsets.symmetric(horizontal: 0, vertical: 15);
  static const EdgeInsets x5symmetricPaddingV = EdgeInsets.symmetric(horizontal: 0, vertical: 50);
  static const EdgeInsets symmetricText = EdgeInsets.symmetric(horizontal: 15,vertical: 0);
  static const EdgeInsets topPadding = EdgeInsets.only(top: 155);
  static const EdgeInsets toptitlePadding = EdgeInsets.only(top: 80);
  static const EdgeInsets buttonBottomPadding = EdgeInsets.only(top: 475);
  static const EdgeInsets bottomPadding = EdgeInsets.only(bottom:15 );
  static const EdgeInsets symmetricCard = EdgeInsets.symmetric(vertical: 20,horizontal: 14);
  
  
}


extension ProjectTextStyles on BuildContext {
  // Title Large Styles
  TextStyle get blackTitleLarge => Theme.of(this).textTheme.titleLarge!.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: projectColor.Black,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get coldMorningTitleLarge => Theme.of(this).textTheme.titleLarge!.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: projectColor.ColdMorning,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get greatFallsTitleLarge => Theme.of(this).textTheme.titleLarge!.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: projectColor.GreatFalls,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get bleachedAlmondTitleLarge => Theme.of(this).textTheme.titleLarge!.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: projectColor.BleanchedAlmond,
    fontFamily: 'HelveticaNeue'
  );

  // Title Medium Styles
  TextStyle get blackTitleMedium => Theme.of(this).textTheme.titleMedium!.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: projectColor.Black,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get coldMorningTitleMedium => Theme.of(this).textTheme.titleMedium!.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: projectColor.ColdMorning,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get coldMorningTitleMediumBold => Theme.of(this).textTheme.titleMedium!.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: projectColor.ColdMorning,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get bleachedAlmondTitleMedium => Theme.of(this).textTheme.titleMedium!.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: projectColor.BleanchedAlmond,
    fontFamily: 'HelveticaNeue'
  );

  // Title Small Styles
  TextStyle get blackTitleSmall => Theme.of(this).textTheme.titleSmall!.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: projectColor.Black,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get coldMorningTitleSmall => Theme.of(this).textTheme.titleSmall!.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: projectColor.ColdMorning,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get greatFallsTitleSmall => Theme.of(this).textTheme.titleSmall!.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: projectColor.GreatFalls,
    fontFamily: 'HelveticaNeue'
  );

  // Body Large Styles
  TextStyle get blackBodyLarge => Theme.of(this).textTheme.bodyLarge!.copyWith(
    fontSize: 16,
    color: projectColor.Black,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get coldMorningBodyLarge => Theme.of(this).textTheme.bodyLarge!.copyWith(
    fontSize: 16,
    color: projectColor.ColdMorning,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get bleachedAlmondBodyLarge => Theme.of(this).textTheme.bodyLarge!.copyWith(
    fontSize: 16,
    color: projectColor.BleanchedAlmond,
    fontFamily: 'HelveticaNeue'
  );

  // Body Medium Styles
  TextStyle get blackBodyMedium => Theme.of(this).textTheme.bodyMedium!.copyWith(
    fontSize: 14,
    color: projectColor.Black,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get coldMorningBodyMedium => Theme.of(this).textTheme.bodyMedium!.copyWith(
    fontSize: 14,
    color: projectColor.ColdMorning,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get greatFallsBodyMedium => Theme.of(this).textTheme.bodyMedium!.copyWith(
    fontSize: 14,
    color: projectColor.GreatFalls,
    fontFamily: 'HelveticaNeue'
  );

  // Body Small Styles
  TextStyle get blackBodySmall => Theme.of(this).textTheme.bodySmall!.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w300,
    color: projectColor.Black,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get coldMorningBodySmall => Theme.of(this).textTheme.bodySmall!.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w300,
    color: projectColor.ColdMorning,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get bleachedAlmondBodySmall => Theme.of(this).textTheme.bodySmall!.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w300,
    color: projectColor.BleanchedAlmond,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get breonneBlueTitleLarge => Theme.of(this).textTheme.titleLarge!.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: projectColor.BreonneBlue,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get breonneBlueBodyLarge => Theme.of(this).textTheme.bodyLarge!.copyWith(
    fontSize: 16,
    color: projectColor.BreonneBlue,
    fontFamily: 'HelveticaNeue'
  );
  TextStyle get creamyApricotTitle2xLarge => Theme.of(this).textTheme.titleLarge!.copyWith(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: projectColor.CreamyApricot,
    fontFamily: 'HelveticaNeue'
  );
}