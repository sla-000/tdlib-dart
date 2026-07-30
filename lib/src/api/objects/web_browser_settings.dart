// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes web browser settings
@immutable
class WebBrowserSettings extends TdObject {
  const WebBrowserSettings({
    required this.openExternalBrowser,
    required this.externalExceptions,
    required this.inAppExceptions,
    required this.displayCloseButton,
  });

  /// [openExternalBrowser] True, if links are opened in an external browser by
  /// default
  final bool openExternalBrowser;

  /// [externalExceptions] The list of websites which must always be opened in
  /// an external browser
  final List<WebDomainException> externalExceptions;

  /// [inAppExceptions] The list of websites which must always be opened in the
  /// in-app browser
  final List<WebDomainException> inAppExceptions;

  /// [displayCloseButton] True, if a close button must be shown in the in-app
  /// browser; for Android app only
  final bool displayCloseButton;

  static const String constructor = 'webBrowserSettings';

  static WebBrowserSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WebBrowserSettings(
      openExternalBrowser: json['open_external_browser'] as bool,
      externalExceptions: List<WebDomainException>.from(
          ((json['external_exceptions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => WebDomainException.fromJson(item))
              .toList()),
      inAppExceptions: List<WebDomainException>.from(
          ((json['in_app_exceptions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => WebDomainException.fromJson(item))
              .toList()),
      displayCloseButton: json['display_close_button'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'open_external_browser': openExternalBrowser,
        'external_exceptions':
            externalExceptions.map((item) => item.toJson()).toList(),
        'in_app_exceptions':
            inAppExceptions.map((item) => item.toJson()).toList(),
        'display_close_button': displayCloseButton,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is WebBrowserSettings &&
          const DeepCollectionEquality()
              .equals(other.openExternalBrowser, openExternalBrowser) &&
          const DeepCollectionEquality()
              .equals(other.externalExceptions, externalExceptions) &&
          const DeepCollectionEquality()
              .equals(other.inAppExceptions, inAppExceptions) &&
          const DeepCollectionEquality()
              .equals(other.displayCloseButton, displayCloseButton));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(openExternalBrowser),
        const DeepCollectionEquality().hash(externalExceptions),
        const DeepCollectionEquality().hash(inAppExceptions),
        const DeepCollectionEquality().hash(displayCloseButton)
      ]);
}
