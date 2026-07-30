// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The supergroup location was changed
@immutable
class ChatEventLocationChanged extends ChatEventAction {
  const ChatEventLocationChanged({
    this.oldLocation,
    this.newLocation,
  });

  /// [oldLocation] Previous location; may be null
  final ChatLocation? oldLocation;

  /// [newLocation] New location; may be null
  final ChatLocation? newLocation;

  static const String constructor = 'chatEventLocationChanged';

  static ChatEventLocationChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventLocationChanged(
      oldLocation:
          ChatLocation.fromJson(json['old_location'] as Map<String, dynamic>?),
      newLocation:
          ChatLocation.fromJson(json['new_location'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_location': oldLocation?.toJson(),
        'new_location': newLocation?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventLocationChanged &&
          const DeepCollectionEquality()
              .equals(other.oldLocation, oldLocation) &&
          const DeepCollectionEquality()
              .equals(other.newLocation, newLocation));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(oldLocation),
        const DeepCollectionEquality().hash(newLocation)
      ]);
}
