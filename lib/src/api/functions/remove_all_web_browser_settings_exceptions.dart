// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes special handling for the opening of all links
/// Returns [Ok]
@immutable
class RemoveAllWebBrowserSettingsExceptions extends TdFunction {
  const RemoveAllWebBrowserSettingsExceptions();

  static const String constructor = 'removeAllWebBrowserSettingsExceptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RemoveAllWebBrowserSettingsExceptions);

  @override
  int get hashCode => runtimeType.hashCode;
}
