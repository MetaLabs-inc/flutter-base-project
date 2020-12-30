---This file will be deleted then.
In this folder will be added the shared things between different screens.

For example:

---Theme.dart---

---Font.dart---

---uiHelpers.dart---

import 'package:flutter/material.dart';

/// Contains useful functions to reduce boilerplate code
class UIHelper {
// Vertical spacing constants. Adjust to your liking.
static const double \_VerticalSpaceSmall = 10.0;
static const double \_VerticalSpaceMedium = 20.0;
static const double \_VerticalSpaceLarge = 60.0;

// Vertical spacing constants. Adjust to your liking.
static const double \_HorizontalSpaceSmall = 10.0;
static const double \_HorizontalSpaceMedium = 20.0;
static const double HorizontalSpaceLarge = 60.0;

/// Returns a vertical space with height set to [_VerticalSpaceSmall]
static Widget verticalSpaceSmall() {
return verticalSpace(\_VerticalSpaceSmall);
}
}
