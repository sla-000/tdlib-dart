// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns an HTTPS link, which can be used to get information about the
/// current user
/// Returns [UserLink]
@immutable
class GetUserLink extends TdFunction {
  const GetUserLink();

  static const String constructor = 'getUserLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetUserLink);

  @override
  int get hashCode => runtimeType.hashCode;
}
