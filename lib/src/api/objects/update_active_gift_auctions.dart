// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The list of auctions in which the current user participates has changed
@immutable
class UpdateActiveGiftAuctions extends Update {
  const UpdateActiveGiftAuctions({
    required this.states,
  });

  /// [states] New states of the auctions
  final List<GiftAuctionState> states;

  static const String constructor = 'updateActiveGiftAuctions';

  static UpdateActiveGiftAuctions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateActiveGiftAuctions(
      states: List<GiftAuctionState>.from(
          ((json['states'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => GiftAuctionState.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'states': states.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateActiveGiftAuctions &&
          const DeepCollectionEquality().equals(other.states, states));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(states)]);
}
