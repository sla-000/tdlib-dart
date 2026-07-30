// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A purchase through App Store
@immutable
class StoreTransactionAppStore extends StoreTransaction {
  const StoreTransactionAppStore({
    required this.receipt,
  });

  /// [receipt] App Store receipt
  final String receipt;

  static const String constructor = 'storeTransactionAppStore';

  static StoreTransactionAppStore? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoreTransactionAppStore(
      receipt: json['receipt'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'receipt': receipt,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StoreTransactionAppStore &&
          const DeepCollectionEquality().equals(other.receipt, receipt));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(receipt)]);
}
