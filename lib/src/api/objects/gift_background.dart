import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes background of a gift
@immutable
class GiftBackground extends TdObject {
  const GiftBackground({
    required this.centerColor,
    required this.edgeColor,
    required this.textColor,
  });

  /// [centerColor] Center color in RGB format
  final int centerColor;

  /// [edgeColor] Edge color in RGB format
  final int edgeColor;

  /// [textColor] Text color in RGB format
  final int textColor;

  static const String constructor = 'giftBackground';

  static GiftBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftBackground(
      centerColor: json['center_color'] as int,
      edgeColor: json['edge_color'] as int,
      textColor: json['text_color'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'center_color': centerColor,
        'edge_color': edgeColor,
        'text_color': textColor,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
