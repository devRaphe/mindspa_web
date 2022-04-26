library coming_soon_view;

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'coming_soon_view_model.dart';

part 'coming_soon_mobile.dart';
part 'coming_soon_tablet.dart';
part 'coming_soon_desktop.dart';

class ComingSoonView extends StatelessWidget {
  const ComingSoonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ComingSoonViewModel>.reactive(
      viewModelBuilder: () => ComingSoonViewModel(),
      builder: (
        BuildContext context,
        ComingSoonViewModel model,
        Widget? child,
      ) {
        return ScreenTypeLayout(
          mobile: _ComingSoonMobile(model),
          tablet: _ComingSoonTablet(model),
          desktop: _ComingSoonDesktop(model),
        );
      },
    );
  }
}
