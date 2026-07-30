// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The ability to display folder names for each chat in the chat list
@immutable
class BusinessFeatureChatFolderTags extends BusinessFeature {
  const BusinessFeatureChatFolderTags();

  static const String constructor = 'businessFeatureChatFolderTags';

  static BusinessFeatureChatFolderTags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureChatFolderTags();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BusinessFeatureChatFolderTags);

  @override
  int get hashCode => runtimeType.hashCode;
}
