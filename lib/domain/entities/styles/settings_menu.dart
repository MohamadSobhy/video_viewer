import 'package:flutter/material.dart';

class SettingsMenuStyle {
  /// These are the styles of the settings sales, here you will change the icons and
  /// the language of the texts
  SettingsMenuStyle({
    Widget settings,
    Widget speed,
    Widget selected,
    Widget chevron,
    this.paddingBetween = 24,
  })  : this.settings = settings ??
            Icon(
              Icons.settings_outlined,
              color: Colors.white,
              size: 20,
            ),
        this.speed = speed ?? Icon(Icons.speed, color: Colors.white, size: 20),
        this.selected =
            selected ?? Icon(Icons.done, color: Colors.white, size: 20),
        this.chevron = chevron ?? Icon(Icons.chevron_left, color: Colors.white);

  /// It is the icon that will have the speed change option
  ///
  ///DEFAULT:
  ///```dart
  ///  Icon(Icons.speed, color: Colors.white, size: 20;
  ///```
  final Widget speed;

  /// It is the chevron or icon that appears to return to the Settings Menu
  /// when you are changing Quality or Speed
  ///
  ///DEFAULT:
  ///```dart
  ///  Icon(Icons.chevron_left, color: Colors.white);
  ///```
  final Widget chevron;

  /// It is the icon that appears when the current configuration is selected
  ///
  ///DEFAULT:
  ///```dart
  ///  Icon(Icons.done, color: Colors.white, size: 20);
  ///```
  final Widget selected;

  /// It is the configuration icon that appears in the ProgressBar and also in
  /// the Settings Menu
  ///
  ///DEFAULT:
  ///```dart
  ///  Icon(Icons.settings_outlined, color: Colors.white, size: 20);
  ///```
  final Widget settings;

  /// It is the padding between all the elements of the SettingsMenu
  final double paddingBetween;
}