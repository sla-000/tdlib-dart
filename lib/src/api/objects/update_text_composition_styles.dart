import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The styles supported for text composition have changed
@immutable
class UpdateTextCompositionStyles extends Update {
  const UpdateTextCompositionStyles({
    required this.styles,
  });

  /// [styles] The new list of supported styles
  final List<TextCompositionStyle> styles;

  static const String constructor = 'updateTextCompositionStyles';

  static UpdateTextCompositionStyles? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTextCompositionStyles(
      styles: List<TextCompositionStyle>.from(
          ((json['styles'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => TextCompositionStyle.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'styles': styles.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
