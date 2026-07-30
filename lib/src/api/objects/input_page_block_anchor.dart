import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An invisible anchor
@immutable
class InputPageBlockAnchor extends InputPageBlock {
  const InputPageBlockAnchor({
    required this.name,
  });

  /// [name] Name of the anchor
  final String name;

  static const String constructor = 'inputPageBlockAnchor';

  static InputPageBlockAnchor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockAnchor(
      name: json['name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
