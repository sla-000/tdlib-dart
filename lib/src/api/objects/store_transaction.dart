// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an in-store transaction
@immutable
abstract class StoreTransaction extends TdObject {
  const StoreTransaction();

  static const String constructor = 'storeTransaction';

  /// Inherited by:
  /// [StoreTransactionAppStore]
  /// [StoreTransactionGooglePlay]
  static StoreTransaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoreTransactionAppStore.constructor:
        return StoreTransactionAppStore.fromJson(json);
      case StoreTransactionGooglePlay.constructor:
        return StoreTransactionGooglePlay.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is StoreTransaction);

  @override
  int get hashCode => runtimeType.hashCode;
}
