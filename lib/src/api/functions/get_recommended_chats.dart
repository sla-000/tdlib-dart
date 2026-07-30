// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a list of channel chats recommended to the current user
/// Returns [Chats]
@immutable
class GetRecommendedChats extends TdFunction {
  const GetRecommendedChats();

  static const String constructor = 'getRecommendedChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetRecommendedChats);

  @override
  int get hashCode => runtimeType.hashCode;
}
