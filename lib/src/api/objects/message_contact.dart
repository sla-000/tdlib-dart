// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with a user contact
@immutable
class MessageContact extends MessageContent {
  const MessageContact({
    required this.contact,
  });

  /// [contact] The contact description
  final Contact contact;

  static const String constructor = 'messageContact';

  static MessageContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageContact(
      contact: Contact.fromJson(json['contact'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'contact': contact.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageContact &&
          const DeepCollectionEquality().equals(other.contact, contact));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(contact)]);
}
