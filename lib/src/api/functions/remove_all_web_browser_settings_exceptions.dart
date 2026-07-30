import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
