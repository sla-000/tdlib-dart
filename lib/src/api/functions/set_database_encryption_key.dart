// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the database encryption key. Usually the encryption key is never
/// changed and is stored in some OS keychain
/// Returns [Ok]
@immutable
class SetDatabaseEncryptionKey extends TdFunction {
  const SetDatabaseEncryptionKey({
    required this.newEncryptionKey,
  });

  /// [newEncryptionKey] New encryption key
  final String newEncryptionKey;

  static const String constructor = 'setDatabaseEncryptionKey';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'new_encryption_key': newEncryptionKey,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetDatabaseEncryptionKey &&
          const DeepCollectionEquality()
              .equals(other.newEncryptionKey, newEncryptionKey));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(newEncryptionKey)]);
}
