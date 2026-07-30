import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a dialog for creating of a managed bot
@immutable
class LinkPreviewTypeRequestManagedBot extends LinkPreviewType {
  const LinkPreviewTypeRequestManagedBot();

  static const String constructor = 'linkPreviewTypeRequestManagedBot';

  static LinkPreviewTypeRequestManagedBot? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LinkPreviewTypeRequestManagedBot();
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
