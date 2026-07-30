// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns up to 20 recently used inline bots in the order of their last
/// usage
/// Returns [Users]
@immutable
class GetRecentInlineBots extends TdFunction {
  const GetRecentInlineBots();

  static const String constructor = 'getRecentInlineBots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetRecentInlineBots);

  @override
  int get hashCode => runtimeType.hashCode;
}
