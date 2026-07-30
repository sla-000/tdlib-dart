// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns default icon name for a folder. Can be called synchronously
/// Returns [ChatFolderIcon]
@immutable
class GetChatFolderDefaultIconName extends TdFunction {
  const GetChatFolderDefaultIconName({
    required this.folder,
  });

  /// [folder] Chat folder
  final ChatFolder folder;

  static const String constructor = 'getChatFolderDefaultIconName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'folder': folder.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetChatFolderDefaultIconName &&
          const DeepCollectionEquality().equals(other.folder, folder));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(folder)]);
}
