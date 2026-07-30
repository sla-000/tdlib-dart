import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
