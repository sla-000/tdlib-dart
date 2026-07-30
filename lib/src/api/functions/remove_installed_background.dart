// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes background from the list of installed backgrounds
/// Returns [Ok]
@immutable
class RemoveInstalledBackground extends TdFunction {
  const RemoveInstalledBackground({
    required this.backgroundId,
  });

  /// [backgroundId] The background identifier
  final int backgroundId;

  static const String constructor = 'removeInstalledBackground';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'background_id': backgroundId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RemoveInstalledBackground &&
          const DeepCollectionEquality()
              .equals(other.backgroundId, backgroundId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(backgroundId)]);
}
