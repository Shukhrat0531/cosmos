import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import 'package:flutter/material.dart';

/// Контекст экстеншны
extension BuildContextX on BuildContext {
  /// Полуиить зависимости через контекст

  /// Получить MediaQuery через контекст
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get screenSize => mediaQuery.size;

  /// Получить тему через контекст
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;

  /// Перевести через контекст
  AppLocalizations get localized => AppLocalizations.of(this)!;
}
