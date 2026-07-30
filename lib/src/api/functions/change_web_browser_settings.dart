// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes web browser settings
/// Returns [Ok]
@immutable
class ChangeWebBrowserSettings extends TdFunction {
  const ChangeWebBrowserSettings({
    required this.openExternalBrowser,
    required this.displayCloseButton,
  });

  /// [openExternalBrowser] Pass true if links must be opened in an external
  /// browser by default
  final bool openExternalBrowser;

  /// [displayCloseButton] Pass true if a close button must be shown in the
  /// in-app browser; for Android app only
  final bool displayCloseButton;

  static const String constructor = 'changeWebBrowserSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'open_external_browser': openExternalBrowser,
        'display_close_button': displayCloseButton,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChangeWebBrowserSettings &&
          const DeepCollectionEquality()
              .equals(other.openExternalBrowser, openExternalBrowser) &&
          const DeepCollectionEquality()
              .equals(other.displayCloseButton, displayCloseButton));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(openExternalBrowser),
        const DeepCollectionEquality().hash(displayCloseButton)
      ]);
}
