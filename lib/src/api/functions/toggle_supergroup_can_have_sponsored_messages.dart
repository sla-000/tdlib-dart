// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Toggles whether sponsored messages are shown in the channel chat; requires
/// owner privileges in the channel. The chat must have at least
/// chatBoostFeatures.min_sponsored_message_disable_boost_level boost level to
/// disable sponsored messages
/// Returns [Ok]
@immutable
class ToggleSupergroupCanHaveSponsoredMessages extends TdFunction {
  const ToggleSupergroupCanHaveSponsoredMessages({
    required this.supergroupId,
    required this.canHaveSponsoredMessages,
  });

  /// [supergroupId] The identifier of the channel
  final int supergroupId;

  /// [canHaveSponsoredMessages] The new value of can_have_sponsored_messages
  final bool canHaveSponsoredMessages;

  static const String constructor = 'toggleSupergroupCanHaveSponsoredMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'can_have_sponsored_messages': canHaveSponsoredMessages,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleSupergroupCanHaveSponsoredMessages &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId) &&
          const DeepCollectionEquality().equals(
              other.canHaveSponsoredMessages, canHaveSponsoredMessages));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(supergroupId),
        const DeepCollectionEquality().hash(canHaveSponsoredMessages)
      ]);
}
