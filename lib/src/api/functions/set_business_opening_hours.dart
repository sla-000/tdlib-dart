// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the business opening hours of the current user. Requires Telegram
/// Business subscription
/// Returns [Ok]
@immutable
class SetBusinessOpeningHours extends TdFunction {
  const SetBusinessOpeningHours({
    this.openingHours,
  });

  /// [openingHours] The new opening hours of the business; pass null to remove
  /// the opening hours; up to 28 time intervals can be specified
  final BusinessOpeningHours? openingHours;

  static const String constructor = 'setBusinessOpeningHours';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'opening_hours': openingHours?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetBusinessOpeningHours &&
          const DeepCollectionEquality()
              .equals(other.openingHours, openingHours));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(openingHours)]);
}
