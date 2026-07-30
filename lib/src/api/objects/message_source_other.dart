// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message is from some other source
@immutable
class MessageSourceOther extends MessageSource {
  const MessageSourceOther();

  static const String constructor = 'messageSourceOther';

  static MessageSourceOther? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceOther();
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
      (other.runtimeType == runtimeType && other is MessageSourceOther);

  @override
  int get hashCode => runtimeType.hashCode;
}
