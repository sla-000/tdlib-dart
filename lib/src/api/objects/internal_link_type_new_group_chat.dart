import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the screen for creating a new group chat
@immutable
class InternalLinkTypeNewGroupChat extends InternalLinkType {
  const InternalLinkTypeNewGroupChat();

  static const String constructor = 'internalLinkTypeNewGroupChat';

  static InternalLinkTypeNewGroupChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeNewGroupChat();
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
