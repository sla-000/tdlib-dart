// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a user by its phone number. Call
/// searchUserByPhoneNumber with the given phone number to process the link.
/// If the user is found, then call createPrivateChat and open user's profile
/// information screen or the chat itself. If draft text isn't empty, then put
/// the draft text in the input field
@immutable
class InternalLinkTypeUserPhoneNumber extends InternalLinkType {
  const InternalLinkTypeUserPhoneNumber({
    required this.phoneNumber,
    required this.draftText,
    required this.openProfile,
  });

  /// [phoneNumber] Phone number of the user
  final String phoneNumber;

  /// [draftText] Draft text for message to send in the chat
  final String draftText;

  /// [openProfile] True, if user's profile information screen must be opened;
  /// otherwise, the chat itself must be opened
  final bool openProfile;

  static const String constructor = 'internalLinkTypeUserPhoneNumber';

  static InternalLinkTypeUserPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeUserPhoneNumber(
      phoneNumber: (json['phone_number'] as String?) ?? '',
      draftText: (json['draft_text'] as String?) ?? '',
      openProfile: (json['open_profile'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number': phoneNumber,
        'draft_text': draftText,
        'open_profile': openProfile,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeUserPhoneNumber &&
          const DeepCollectionEquality()
              .equals(other.phoneNumber, phoneNumber) &&
          const DeepCollectionEquality().equals(other.draftText, draftText) &&
          const DeepCollectionEquality()
              .equals(other.openProfile, openProfile));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(phoneNumber),
        const DeepCollectionEquality().hash(draftText),
        const DeepCollectionEquality().hash(openProfile)
      ]);
}
