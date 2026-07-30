// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A background from the server
@immutable
class InputBackgroundRemote extends InputBackground {
  const InputBackgroundRemote({
    required this.backgroundId,
  });

  /// [backgroundId] The background identifier
  final int backgroundId;

  static const String constructor = 'inputBackgroundRemote';

  static InputBackgroundRemote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputBackgroundRemote(
      backgroundId: (json['background_id'] is int
              ? json['background_id'] as int
              : int.tryParse(json['background_id']?.toString() ?? '')) ??
          0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'background_id': backgroundId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputBackgroundRemote &&
          const DeepCollectionEquality()
              .equals(other.backgroundId, backgroundId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(backgroundId)]);
}
