import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of passkeys
@immutable
class Passkeys extends TdObject {
  const Passkeys({
    required this.passkeys,
  });

  /// [passkeys] List of passkeys
  final List<Passkey> passkeys;

  static const String constructor = 'passkeys';

  static Passkeys? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Passkeys(
      passkeys: List<Passkey>.from(
          ((json['passkeys'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Passkey.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'passkeys': passkeys.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
