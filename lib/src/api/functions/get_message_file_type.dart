// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a file with messages exported from another
/// application
/// Returns [MessageFileType]
@immutable
class GetMessageFileType extends TdFunction {
  const GetMessageFileType({
    required this.messageFileHead,
  });

  /// [messageFileHead] Beginning of the message file; up to 100 first lines
  final String messageFileHead;

  static const String constructor = 'getMessageFileType';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_file_head': messageFileHead,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetMessageFileType &&
          const DeepCollectionEquality()
              .equals(other.messageFileHead, messageFileHead));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(messageFileHead)]);
}
