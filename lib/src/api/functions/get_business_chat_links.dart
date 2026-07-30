// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns business chat links created for the current account
/// Returns [BusinessChatLinks]
@immutable
class GetBusinessChatLinks extends TdFunction {
  const GetBusinessChatLinks();

  static const String constructor = 'getBusinessChatLinks';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetBusinessChatLinks);

  @override
  int get hashCode => runtimeType.hashCode;
}
