// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks validness of a name for a quick reply shortcut. Can be called
/// synchronously
/// Returns [Ok]
@immutable
class CheckQuickReplyShortcutName extends TdFunction {
  const CheckQuickReplyShortcutName({
    required this.name,
  });

  /// [name] The name of the shortcut; 1-32 characters
  final String name;

  static const String constructor = 'checkQuickReplyShortcutName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CheckQuickReplyShortcutName &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(name)]);
}
