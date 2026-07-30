// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the birthdate of the current user
/// Returns [Ok]
@immutable
class SetBirthdate extends TdFunction {
  const SetBirthdate({
    this.birthdate,
  });

  /// [birthdate] The new value of the current user's birthdate; pass null to
  /// remove the birthdate
  final Birthdate? birthdate;

  static const String constructor = 'setBirthdate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'birthdate': birthdate?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetBirthdate &&
          const DeepCollectionEquality().equals(other.birthdate, birthdate));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(birthdate)]);
}
