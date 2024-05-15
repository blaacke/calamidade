import 'package:design_system/design_system.dart';
import 'package:design_system/src/alert/alert_widget.dart';
import 'package:flutter/material.dart';

class Alerts {
  static void showSucess(BuildContext context, String message) {
    SnackBar snackBar = AlertWidget(
            color: Theme.of(context).extension<CoopartilharColors>()!.white,
            backgroundColor: Theme.of(context).colorScheme.primary,
            imageIcon: CooIcons.cooCheck,
            message: message)
        .build(context);
    show(context, snackBar);
  }

  static void showFailure(BuildContext context, String message) {
    SnackBar snackBar = AlertWidget(
            color: Theme.of(context).extension<CoopartilharColors>()!.white,
            backgroundColor: Theme.of(context).colorScheme.error,
            icon: UIcons.regularRounded.cross_circle,
            message: message)
        .build(context);

    show(context, snackBar);
  }

  static void show(BuildContext context, SnackBar snackBar) {
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
