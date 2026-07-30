// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message containing a user contact
@immutable
class InputMessageContact extends InputMessageContent {
  const InputMessageContact({
    required this.contact,
  });

  /// [contact] Contact to send
  final Contact contact;

  static const String constructor = 'inputMessageContact';

  static InputMessageContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageContact(
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
          other is InputMessageContact &&
          const DeepCollectionEquality().equals(other.contact, contact));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(contact)]);
}
