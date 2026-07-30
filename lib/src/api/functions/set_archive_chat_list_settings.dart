// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes settings for automatic moving of chats to and from the Archive
/// chat lists
/// Returns [Ok]
@immutable
class SetArchiveChatListSettings extends TdFunction {
  const SetArchiveChatListSettings({
    required this.settings,
  });

  /// [settings] New settings
  final ArchiveChatListSettings settings;

  static const String constructor = 'setArchiveChatListSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'settings': settings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetArchiveChatListSettings &&
          const DeepCollectionEquality().equals(other.settings, settings));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(settings)]);
}
