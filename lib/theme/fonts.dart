import 'package:flutter/widgets.dart';

class AppFonts {
  // OpenSans font family
  static const String openSans = 'OpenSans';

  static TextStyle get regularOpenSans {
    return const TextStyle(
      fontFamily: openSans,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle get boldOpenSans {
    return const TextStyle(
      fontFamily: openSans,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get extraBoldOpenSans {
    return const TextStyle(
      fontFamily: openSans,
      fontWeight: FontWeight.w800, // For ExtraBold
    );
  }

  static TextStyle get lightOpenSans {
    return const TextStyle(
      fontFamily: openSans,
      fontWeight: FontWeight.w300, // For Light
    );
  }

  static TextStyle get mediumOpenSans {
    return const TextStyle(
      fontFamily: openSans,
      fontWeight: FontWeight.w500, // For Medium
    );
  }

  // EncodeSans font family
  static const String encodeSans = 'EncodeSans';

  static TextStyle get regularEncodeSans {
    return const TextStyle(
      fontFamily: encodeSans,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle get boldEncodeSans {
    return const TextStyle(
      fontFamily: encodeSans,
      fontWeight: FontWeight.bold,
    );
  }
  static TextStyle get semiBoldEncodeSans {
    return const TextStyle(
      fontFamily: encodeSans,
      fontWeight: FontWeight.w700,
    );
  }
}
