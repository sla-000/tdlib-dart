// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns settings for automatic moving of chats to and from the Archive
/// chat lists
/// Returns [ArchiveChatListSettings]
@immutable
class GetArchiveChatListSettings extends TdFunction {
  const GetArchiveChatListSettings();

  static const String constructor = 'getArchiveChatListSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetArchiveChatListSettings);

  @override
  int get hashCode => runtimeType.hashCode;
}
