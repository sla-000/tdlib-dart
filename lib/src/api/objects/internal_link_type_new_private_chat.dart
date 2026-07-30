// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to the screen for creating a new private chat with a
/// contact
@immutable
class InternalLinkTypeNewPrivateChat extends InternalLinkType {
  const InternalLinkTypeNewPrivateChat();

  static const String constructor = 'internalLinkTypeNewPrivateChat';

  static InternalLinkTypeNewPrivateChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeNewPrivateChat();
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
          other is InternalLinkTypeNewPrivateChat);

  @override
  int get hashCode => runtimeType.hashCode;
}
