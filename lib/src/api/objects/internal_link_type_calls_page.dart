import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the Call tab or page
@immutable
class InternalLinkTypeCallsPage extends InternalLinkType {
  const InternalLinkTypeCallsPage({
    required this.section,
  });

  /// [section] Section of the page; may be one of "", "all", "missed", "edit",
  /// "show-tab", "start-call"
  final String section;

  static const String constructor = 'internalLinkTypeCallsPage';

  static InternalLinkTypeCallsPage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeCallsPage(
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
