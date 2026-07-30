// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of features available for different chat boost levels.
/// This is an offline method
/// Returns [ChatBoostFeatures]
@immutable
class GetChatBoostFeatures extends TdFunction {
  const GetChatBoostFeatures({
    required this.isChannel,
  });

  /// [isChannel] Pass true to get the list of features for channels; pass false
  /// to get the list of features for supergroups
  final bool isChannel;

  static const String constructor = 'getChatBoostFeatures';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_channel': isChannel,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetChatBoostFeatures &&
          const DeepCollectionEquality().equals(other.isChannel, isChannel));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(isChannel)]);
}
