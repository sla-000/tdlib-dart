// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns default message auto-delete time setting for new chats
/// Returns [MessageAutoDeleteTime]
@immutable
class GetDefaultMessageAutoDeleteTime extends TdFunction {
  const GetDefaultMessageAutoDeleteTime();

  static const String constructor = 'getDefaultMessageAutoDeleteTime';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetDefaultMessageAutoDeleteTime);

  @override
  int get hashCode => runtimeType.hashCode;
}
