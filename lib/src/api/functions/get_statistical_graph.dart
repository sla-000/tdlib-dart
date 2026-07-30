// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Loads an asynchronous or a zoomed in statistical graph
/// Returns [StatisticalGraph]
@immutable
class GetStatisticalGraph extends TdFunction {
  const GetStatisticalGraph({
    required this.chatId,
    required this.token,
    required this.x,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [token] The token for graph loading
  final String token;

  /// [x] X-value for zoomed in graph or 0 otherwise
  final int x;

  static const String constructor = 'getStatisticalGraph';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'token': token,
        'x': x,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetStatisticalGraph &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.token, token) &&
          const DeepCollectionEquality().equals(other.x, x));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(token),
        const DeepCollectionEquality().hash(x)
      ]);
}
