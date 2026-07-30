// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes reset state of an email address
@immutable
abstract class EmailAddressResetState extends TdObject {
  const EmailAddressResetState();

  static const String constructor = 'emailAddressResetState';

  /// Inherited by:
  /// [EmailAddressResetStateAvailable]
  /// [EmailAddressResetStatePending]
  static EmailAddressResetState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case EmailAddressResetStateAvailable.constructor:
        return EmailAddressResetStateAvailable.fromJson(json);
      case EmailAddressResetStatePending.constructor:
        return EmailAddressResetStatePending.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is EmailAddressResetState);

  @override
  int get hashCode => runtimeType.hashCode;
}
