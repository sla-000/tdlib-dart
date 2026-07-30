// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message was screenshotted; the source must be used only if the message
/// content was visible during the screenshot
@immutable
class MessageSourceScreenshot extends MessageSource {
  const MessageSourceScreenshot();

  static const String constructor = 'messageSourceScreenshot';

  static MessageSourceScreenshot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceScreenshot();
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
      (other.runtimeType == runtimeType && other is MessageSourceScreenshot);

  @override
  int get hashCode => runtimeType.hashCode;
}
