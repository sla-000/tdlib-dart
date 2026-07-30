// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Clears the list of recently found chats
/// Returns [Ok]
@immutable
class ClearRecentlyFoundChats extends TdFunction {
  const ClearRecentlyFoundChats();

  static const String constructor = 'clearRecentlyFoundChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ClearRecentlyFoundChats);

  @override
  int get hashCode => runtimeType.hashCode;
}
