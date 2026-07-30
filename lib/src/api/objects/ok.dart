// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An object of this type is returned on a successful function call for
/// certain functions
@immutable
class Ok extends TdObject {
  const Ok();

  static const String constructor = 'ok';

  static Ok? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Ok();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is Ok);

  @override
  int get hashCode => runtimeType.hashCode;
}
