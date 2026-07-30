// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A detailed statistics about a message
@immutable
class MessageStatistics extends TdObject {
  const MessageStatistics({
    required this.messageInteractionGraph,
    required this.messageReactionGraph,
  });

  /// [messageInteractionGraph] A graph containing number of message views and
  /// shares
  final StatisticalGraph messageInteractionGraph;

  /// [messageReactionGraph] A graph containing number of message reactions
  final StatisticalGraph messageReactionGraph;

  static const String constructor = 'messageStatistics';

  static MessageStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageStatistics(
      messageInteractionGraph: StatisticalGraph.fromJson(
          json['message_interaction_graph'] as Map<String, dynamic>?)!,
      messageReactionGraph: StatisticalGraph.fromJson(
          json['message_reaction_graph'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_interaction_graph': messageInteractionGraph.toJson(),
        'message_reaction_graph': messageReactionGraph.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageStatistics &&
          const DeepCollectionEquality()
              .equals(other.messageInteractionGraph, messageInteractionGraph) &&
          const DeepCollectionEquality()
              .equals(other.messageReactionGraph, messageReactionGraph));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(messageInteractionGraph),
        const DeepCollectionEquality().hash(messageReactionGraph)
      ]);
}
