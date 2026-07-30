import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the My Profile application page
@immutable
class InternalLinkTypeMyProfilePage extends InternalLinkType {
  const InternalLinkTypeMyProfilePage({
    required this.section,
  });

  /// [section] Section of the page; may be one of "", "posts",
  /// "posts/all-stories", "posts/add-album", "gifts", "archived-posts"
  final String section;

  static const String constructor = 'internalLinkTypeMyProfilePage';

  static InternalLinkTypeMyProfilePage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeMyProfilePage(
      section: json['section'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'section': section,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
