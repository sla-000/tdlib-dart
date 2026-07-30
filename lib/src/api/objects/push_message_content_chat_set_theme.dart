import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat theme was edited
@immutable
class PushMessageContentChatSetTheme extends PushMessageContent {
  const PushMessageContentChatSetTheme({
    required this.name,
  });

  /// [name] If non-empty, human-readable name of the new theme. Otherwise, the
  /// chat theme was reset to the default one
  final String name;

  static const String constructor = 'pushMessageContentChatSetTheme';

  static PushMessageContentChatSetTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChatSetTheme(
      name: json['name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
