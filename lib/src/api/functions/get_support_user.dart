// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a user who can be contacted to get support
/// Returns [User]
@immutable
class GetSupportUser extends TdFunction {
  const GetSupportUser();

  static const String constructor = 'getSupportUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetSupportUser);

  @override
  int get hashCode => runtimeType.hashCode;
}
