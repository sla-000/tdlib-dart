// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns privacy settings for new chat creation
/// Returns [NewChatPrivacySettings]
@immutable
class GetNewChatPrivacySettings extends TdFunction {
  const GetNewChatPrivacySettings();

  static const String constructor = 'getNewChatPrivacySettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetNewChatPrivacySettings);

  @override
  int get hashCode => runtimeType.hashCode;
}
