// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a TDLib internal log verbosity level
@immutable
class LogVerbosityLevel extends TdObject {
  const LogVerbosityLevel({
    required this.verbosityLevel,
  });

  /// [verbosityLevel] Log verbosity level
  final int verbosityLevel;

  static const String constructor = 'logVerbosityLevel';

  static LogVerbosityLevel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LogVerbosityLevel(
      verbosityLevel: json['verbosity_level'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'verbosity_level': verbosityLevel,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LogVerbosityLevel &&
          const DeepCollectionEquality()
              .equals(other.verbosityLevel, verbosityLevel));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(verbosityLevel)]);
}
