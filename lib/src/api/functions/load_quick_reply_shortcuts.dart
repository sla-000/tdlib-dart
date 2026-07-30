// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Loads quick reply shortcuts created by the current user. The loaded data
/// will be sent through updateQuickReplyShortcut and
/// updateQuickReplyShortcuts
/// Returns [Ok]
@immutable
class LoadQuickReplyShortcuts extends TdFunction {
  const LoadQuickReplyShortcuts();

  static const String constructor = 'loadQuickReplyShortcuts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is LoadQuickReplyShortcuts);

  @override
  int get hashCode => runtimeType.hashCode;
}
