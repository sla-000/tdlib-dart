// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds a special handling for the opening of the specified URL
/// Returns [Ok]
@immutable
class AddWebBrowserSettingsException extends TdFunction {
  const AddWebBrowserSettingsException({
    required this.openExternalBrowser,
    required this.url,
  });

  /// [openExternalBrowser] Pass true if the specified website must be opened in
  /// an external browser; pass false to open it in the in-app browser. There
  /// can be at most 100 exceptions in each list of the exceptions
  final bool openExternalBrowser;

  /// [url] URL of the website
  final String url;

  static const String constructor = 'addWebBrowserSettingsException';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'open_external_browser': openExternalBrowser,
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddWebBrowserSettingsException &&
          const DeepCollectionEquality()
              .equals(other.openExternalBrowser, openExternalBrowser) &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(openExternalBrowser),
        const DeepCollectionEquality().hash(url)
      ]);
}
