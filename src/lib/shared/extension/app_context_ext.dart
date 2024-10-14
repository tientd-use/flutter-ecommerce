import 'package:flutter/material.dart';

extension AppMedia on BuildContext {
  Size screenSize() => MediaQuery.sizeOf(this);
  double pixelRatio() => MediaQuery.devicePixelRatioOf(this);
}

/// Text styles customizations
extension TextStyleCustom on BuildContext {
  TextStyle displayMediumCus() =>
      Theme.of(this).textTheme.displayMedium!.copyWith(
            fontFamily: "Afacad",
            color: Colors.white,
          );
}
