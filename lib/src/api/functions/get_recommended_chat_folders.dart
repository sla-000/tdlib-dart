// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns recommended chat folders for the current user
/// Returns [RecommendedChatFolders]
@immutable
class GetRecommendedChatFolders extends TdFunction {
  const GetRecommendedChatFolders();

  static const String constructor = 'getRecommendedChatFolders';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetRecommendedChatFolders);

  @override
  int get hashCode => runtimeType.hashCode;
}
