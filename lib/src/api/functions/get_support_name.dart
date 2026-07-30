// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns localized name of the Telegram support user; for Telegram support
/// only
/// Returns [Text]
@immutable
class GetSupportName extends TdFunction {
  const GetSupportName();

  static const String constructor = 'getSupportName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetSupportName);

  @override
  int get hashCode => runtimeType.hashCode;
}
