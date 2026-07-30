import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the screen for creating a new channel chat
@immutable
class InternalLinkTypeNewChannelChat extends InternalLinkType {
  const InternalLinkTypeNewChannelChat();

  static const String constructor = 'internalLinkTypeNewChannelChat';

  static InternalLinkTypeNewChannelChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeNewChannelChat();
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
