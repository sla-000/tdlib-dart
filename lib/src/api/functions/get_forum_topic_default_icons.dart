// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of custom emoji, which can be used as forum topic icon by
/// all users
/// Returns [Stickers]
@immutable
class GetForumTopicDefaultIcons extends TdFunction {
  const GetForumTopicDefaultIcons();

  static const String constructor = 'getForumTopicDefaultIcons';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetForumTopicDefaultIcons);

  @override
  int get hashCode => runtimeType.hashCode;
}
