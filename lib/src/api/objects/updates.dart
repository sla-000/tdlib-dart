// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of updates
@immutable
class Updates extends TdObject {
  const Updates({
    required this.updates,
  });

  /// [updates] List of updates
  final List<Update> updates;

  static const String constructor = 'updates';

  static Updates? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Updates(
      updates: List<Update>.from(
          ((json['updates'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Update.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'updates': updates.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Updates &&
          const DeepCollectionEquality().equals(other.updates, updates));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(updates)]);
}
