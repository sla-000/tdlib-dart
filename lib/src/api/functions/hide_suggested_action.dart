// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Hides a suggested action
/// Returns [Ok]
@immutable
class HideSuggestedAction extends TdFunction {
  const HideSuggestedAction({
    required this.action,
  });

  /// [action] Suggested action to hide
  final SuggestedAction action;

  static const String constructor = 'hideSuggestedAction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'action': action.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is HideSuggestedAction &&
          const DeepCollectionEquality().equals(other.action, action));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(action)]);
}
