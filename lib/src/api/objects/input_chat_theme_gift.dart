// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A theme based on an upgraded gift
@immutable
class InputChatThemeGift extends InputChatTheme {
  const InputChatThemeGift({
    required this.name,
  });

  /// [name] Name of the upgraded gift. A gift can be used only in one chat in a
  /// time. When the same gift is used in another chat, theme in the previous
  /// chat is reset to default
  final String name;

  static const String constructor = 'inputChatThemeGift';

  static InputChatThemeGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChatThemeGift(
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputChatThemeGift &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(name)]);
}
