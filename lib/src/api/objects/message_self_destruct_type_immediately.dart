// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message can be opened only once and will be self-destructed once
/// closed
@immutable
class MessageSelfDestructTypeImmediately extends MessageSelfDestructType {
  const MessageSelfDestructTypeImmediately();

  static const String constructor = 'messageSelfDestructTypeImmediately';

  static MessageSelfDestructTypeImmediately? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSelfDestructTypeImmediately();
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
          other is MessageSelfDestructTypeImmediately);

  @override
  int get hashCode => runtimeType.hashCode;
}
