import 'package:flutter/material.dart';

import 'base_screen_impl.dart';

abstract class BaseScreenStandard extends BaseScreenImpl {
  @override
  bool showAppBar() {
    return false;
  }

  @override
  Color appBarBackgroundColor() {
    return backgroundColor();
  }

  @override
  Widget body(BuildContext context) {
    return const SizedBox.shrink();
  }
}
