// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The is_all_history_available setting of a supergroup was toggled
@immutable
class ChatEventIsAllHistoryAvailableToggled extends ChatEventAction {
  const ChatEventIsAllHistoryAvailableToggled({
    required this.isAllHistoryAvailable,
  });

  /// [isAllHistoryAvailable] New value of is_all_history_available
  final bool isAllHistoryAvailable;

  static const String constructor = 'chatEventIsAllHistoryAvailableToggled';

  static ChatEventIsAllHistoryAvailableToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventIsAllHistoryAvailableToggled(
      isAllHistoryAvailable: json['is_all_history_available'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_all_history_available': isAllHistoryAvailable,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventIsAllHistoryAvailableToggled &&
          const DeepCollectionEquality()
              .equals(other.isAllHistoryAvailable, isAllHistoryAvailable));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isAllHistoryAvailable)
      ]);
}
