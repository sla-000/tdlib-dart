// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a background. Call searchBackground with the given
/// background name to process the link. If background is found and the user
/// wants to apply it, then call setDefaultBackground
@immutable
class InternalLinkTypeBackground extends InternalLinkType {
  const InternalLinkTypeBackground({
    required this.backgroundName,
  });

  /// [backgroundName] Name of the background
  final String backgroundName;

  static const String constructor = 'internalLinkTypeBackground';

  static InternalLinkTypeBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeBackground(
      backgroundName: (json['background_name'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'background_name': backgroundName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeBackground &&
          const DeepCollectionEquality()
              .equals(other.backgroundName, backgroundName));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(backgroundName)]);
}
