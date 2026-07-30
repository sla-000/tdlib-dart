// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a freeform gradient fill of a background
@immutable
class BackgroundFillFreeformGradient extends BackgroundFill {
  const BackgroundFillFreeformGradient({
    required this.colors,
  });

  /// [colors] A list of 3 or 4 colors of the freeform gradient in the RGB
  /// format
  final List<int> colors;

  static const String constructor = 'backgroundFillFreeformGradient';

  static BackgroundFillFreeformGradient? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundFillFreeformGradient(
      colors: List<int>.from(((json['colors'] as List<dynamic>?) ?? <dynamic>[])
          .map((item) =>
              (item is int ? item : int.tryParse(item.toString()) ?? 0))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'colors': colors.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BackgroundFillFreeformGradient &&
          const DeepCollectionEquality().equals(other.colors, colors));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(colors)]);
}
