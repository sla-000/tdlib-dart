// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The read date is unknown due to privacy settings of the other user
@immutable
class MessageReadDateUserPrivacyRestricted extends MessageReadDate {
  const MessageReadDateUserPrivacyRestricted();

  static const String constructor = 'messageReadDateUserPrivacyRestricted';

  static MessageReadDateUserPrivacyRestricted? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageReadDateUserPrivacyRestricted();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageReadDateUserPrivacyRestricted);

  @override
  int get hashCode => runtimeType.hashCode;
}
