// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// State of a gift auction was updated
@immutable
class UpdateGiftAuctionState extends Update {
  const UpdateGiftAuctionState({
    required this.state,
  });

  /// [state] New state of the auction
  final GiftAuctionState state;

  static const String constructor = 'updateGiftAuctionState';

  static UpdateGiftAuctionState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateGiftAuctionState(
      state: GiftAuctionState.fromJson(json['state'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'state': state.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateGiftAuctionState &&
          const DeepCollectionEquality().equals(other.state, state));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(state)]);
}
