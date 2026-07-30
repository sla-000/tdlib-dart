import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes a passkey from the list of passkeys allowed to be used for the
/// login by the current user
/// Returns [Ok]
@immutable
class RemoveLoginPasskey extends TdFunction {
  const RemoveLoginPasskey({
    required this.passkeyId,
  });

  /// [passkeyId] Unique identifier of the passkey to remove
  final String passkeyId;

  static const String constructor = 'removeLoginPasskey';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'passkey_id': passkeyId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
