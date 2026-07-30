import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a suggested post. If the post can be approved
/// or declined, then changes to the post can be also suggested. Use
/// sendMessage with reply to the message and suggested post information to
/// suggest message changes. Use addOffer to suggest price or time changes
@immutable
class SuggestedPostInfo extends TdObject {
  const SuggestedPostInfo({
    this.price,
    required this.sendDate,
    required this.state,
    required this.canBeApproved,
    required this.canBeDeclined,
  });

  /// [price] Price of the suggested post; may be null if the post is non-paid
  final SuggestedPostPrice? price;

  /// [sendDate] Point in time (Unix timestamp) when the post is expected to be
  /// published; 0 if the specific date isn't set yet
  final int sendDate;

  /// [state] State of the post
  final SuggestedPostState state;

  /// [canBeApproved] True, if the suggested post can be approved by the current
  /// user using approveSuggestedPost; updates aren't sent when value of this
  /// field changes
  final bool canBeApproved;

  /// [canBeDeclined] True, if the suggested post can be declined by the current
  /// user using declineSuggestedPost; updates aren't sent when value of this
  /// field changes
  final bool canBeDeclined;

  static const String constructor = 'suggestedPostInfo';

  static SuggestedPostInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedPostInfo(
      price:
          SuggestedPostPrice.fromJson(json['price'] as Map<String, dynamic>?),
      sendDate: json['send_date'] as int,
      state:
          SuggestedPostState.fromJson(json['state'] as Map<String, dynamic>?)!,
      canBeApproved: json['can_be_approved'] as bool,
      canBeDeclined: json['can_be_declined'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'price': price?.toJson(),
        'send_date': sendDate,
        'state': state.toJson(),
        'can_be_approved': canBeApproved,
        'can_be_declined': canBeDeclined,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
