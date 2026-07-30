// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the business location of the current user. Requires Telegram
/// Business subscription
/// Returns [Ok]
@immutable
class SetBusinessLocation extends TdFunction {
  const SetBusinessLocation({
    this.location,
  });

  /// [location] The new location of the business; pass null to remove the
  /// location
  final BusinessLocation? location;

  static const String constructor = 'setBusinessLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetBusinessLocation &&
          const DeepCollectionEquality().equals(other.location, location));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(location)]);
}
