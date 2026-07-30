import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the Contacts tab or page
@immutable
class InternalLinkTypeContactsPage extends InternalLinkType {
  const InternalLinkTypeContactsPage({
    required this.section,
  });

  /// [section] Section of the page; may be one of "", "search", "sort", "new",
  /// "invite", "manage"
  final String section;

  static const String constructor = 'internalLinkTypeContactsPage';

  static InternalLinkTypeContactsPage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeContactsPage(
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
