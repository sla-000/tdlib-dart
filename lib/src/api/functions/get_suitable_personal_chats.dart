// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a list of channel chats, which can be used as a personal chat
/// Returns [Chats]
@immutable
class GetSuitablePersonalChats extends TdFunction {
  const GetSuitablePersonalChats();

  static const String constructor = 'getSuitablePersonalChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetSuitablePersonalChats);

  @override
  int get hashCode => runtimeType.hashCode;
}
