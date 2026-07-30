// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A filled background
@immutable
class BackgroundTypeFill extends BackgroundType {
  const BackgroundTypeFill({
    required this.fill,
  });

  /// [fill] The background fill
  final BackgroundFill fill;

  static const String constructor = 'backgroundTypeFill';

  static BackgroundTypeFill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundTypeFill(
      fill: BackgroundFill.fromJson(json['fill'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'fill': fill.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BackgroundTypeFill &&
          const DeepCollectionEquality().equals(other.fill, fill));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(fill)]);
}
