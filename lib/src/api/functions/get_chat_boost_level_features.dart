// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of features available on the specific chat boost level.
/// This is an offline method
/// Returns [ChatBoostLevelFeatures]
@immutable
class GetChatBoostLevelFeatures extends TdFunction {
  const GetChatBoostLevelFeatures({
    required this.isChannel,
    required this.level,
  });

  /// [isChannel] Pass true to get the list of features for channels; pass false
  /// to get the list of features for supergroups
  final bool isChannel;

  /// [level] Chat boost level
  final int level;

  static const String constructor = 'getChatBoostLevelFeatures';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_channel': isChannel,
        'level': level,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetChatBoostLevelFeatures &&
          const DeepCollectionEquality().equals(other.isChannel, isChannel) &&
          const DeepCollectionEquality().equals(other.level, level));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isChannel),
        const DeepCollectionEquality().hash(level)
      ]);
}
