// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Succeeds after a specified amount of time has passed. Can be called before
/// initialization
/// Returns [Ok]
@immutable
class SetAlarm extends TdFunction {
  const SetAlarm({
    required this.seconds,
  });

  /// [seconds] Number of seconds before the function returns
  final double seconds;

  static const String constructor = 'setAlarm';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'seconds': seconds,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetAlarm &&
          const DeepCollectionEquality().equals(other.seconds, seconds));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(seconds)]);
}
