import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Change of some text
@immutable
class DiffEntityTypeReplace extends DiffEntityType {
  const DiffEntityTypeReplace({
    required this.oldText,
  });

  /// [oldText] The old text
  final String oldText;

  static const String constructor = 'diffEntityTypeReplace';

  static DiffEntityTypeReplace? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DiffEntityTypeReplace(
      oldText: json['old_text'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_text': oldText,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
