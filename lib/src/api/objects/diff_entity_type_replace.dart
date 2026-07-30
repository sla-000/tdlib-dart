// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DiffEntityTypeReplace &&
          const DeepCollectionEquality().equals(other.oldText, oldText));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(oldText)]);
}
