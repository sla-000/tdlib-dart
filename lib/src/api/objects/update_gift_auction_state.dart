import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
